import Foundation

public protocol ImageProtocol : Sequence {
    typealias Pixel = Iterator.Element
    
    init(width: Int, height: Int, pixels: [Pixel])
    
    var width: Int { get }
    var height: Int { get }
    
    var xRange: CountableRange<Int> { get }
    var yRange: CountableRange<Int> { get }

    subscript(x: Int, y: Int) -> Pixel { get set }

    subscript(xRange: CountableRange<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> { get }
    subscript<R1: RangeExpression, R2: RangeExpression>(xRange: R1, yRange: R2) -> ImageSlice<Pixel> where R1.Bound == Int, R2.Bound == Int { get }
    subscript<R1: RangeExpression>(xRange: R1, yRange: UnboundedRange) -> ImageSlice<Pixel> where R1.Bound == Int { get }
    subscript<R2: RangeExpression>(xRange: UnboundedRange, yRange: R2) -> ImageSlice<Pixel> where R2.Bound == Int { get }
    subscript(xRange: UnboundedRange, yRange: UnboundedRange) -> ImageSlice<Pixel> { get }
    
    func map<T>(_ transform: (Pixel) throws -> T) rethrows -> Image<T>
    mutating func update(_ body: (inout Pixel) throws -> ()) rethrows
}

extension ImageProtocol {
    public var width: Int {
        return xRange.count
    }
    
    public var height: Int {
        return yRange.count
    }
    
    public subscript<R1: RangeExpression, R2: RangeExpression>(xRange: R1, yRange: R2) -> ImageSlice<Pixel> where R1.Bound == Int, R2.Bound == Int {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }
    
    public subscript<R1: RangeExpression>(xRange: R1, yRange: UnboundedRange) -> ImageSlice<Pixel> where R1.Bound == Int {
        return self[countableRange(from: xRange, relativeTo: self.xRange), self.yRange]
    }
    
    public subscript<R2: RangeExpression>(xRange: UnboundedRange, yRange: R2) -> ImageSlice<Pixel> where R2.Bound == Int {
        return self[self.xRange, countableRange(from: yRange, relativeTo: self.yRange)]
    }
    
    public subscript(xRange: UnboundedRange, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        return self[self.xRange, self.yRange]
    }
}

extension ImageProtocol {
    public init() {
        self.init(width: 0, height: 0, pixels: [])
    }
    
    public init(pixel: Pixel) {
        self.init(width: 1, height: 1, pixel: pixel)
    }
    
    public init(width: Int, height: Int, pixel: Pixel) {
        self.init(width: width, height: height, pixels: [Pixel](repeating: pixel, count: width * height))
    }
    
    public init<S: Sequence>(width: Int, height: Int, pixels: S) where S.Element == Pixel {
        self.init(width: width, height: height, pixels: Array(pixels))
    }
    
    public init<I: ImageProtocol>(_ image: I) where I.Pixel == Pixel {
        self.init(width: image.width, height: image.height, pixels: image)
    }
    
    public init(width: Int, height: Int, pixelAt: (_ x: Int, _ y: Int) throws -> Pixel) rethrows {
        var pixels = [Pixel]()
        
        for y in 0..<height {
            for x in 0..<width {
                pixels.append(try pixelAt(x, y))
            }
        }
        
        self.init(width: width, height: height, pixels: pixels)
    }

    public var count: Int {
        return width * height
    }

    public func pixelAt(x: Int, y: Int) -> Pixel? {
        guard xRange.contains(x) else { return nil }
        guard yRange.contains(y) else { return nil }
        return self[x, y]
    }
}

extension ImageProtocol {
    public func transposed() -> Image<Pixel> {
        var pixels = [Pixel]()
        
        for x in xRange {
            for y in yRange {
                pixels.append(self[x, y])
            }
        }
        
        return Image(width: height, height: width, pixels: pixels)
    }
    
    public func xReversed() -> Image<Pixel> {
        var pixels = [Pixel]()
        
        for y in yRange {
            for x in xRange.reversed() {
                pixels.append(self[x, y])
            }
        }
        
        return Image(width: width, height: height, pixels: pixels)
    }
    
    public func yReversed() -> Image<Pixel> {
        var pixels = [Pixel]()
        
        for y in yRange.reversed() {
            for x in xRange {
                pixels.append(self[x, y])
            }
        }
        
        return Image(width: width, height: height, pixels: pixels)
    }

    public func rotated(byDegrees angle: Int) -> Image<Pixel> {
        precondition(angle % 90 == 0, "`angle` must be a multiple of 90: \(angle)")
        return rotated(byRightAngleInDegrees: angle)
    }

    internal func rotated(byRightAngleInDegrees angle: Int) -> Image<Pixel> {
        assert(angle % 90 == 0, "`angle` must be a multiple of 90: \(angle)")
        
        switch (angle / 90) % 4 {
        case 0:
            if let zelf = self as? Image<Pixel> {
                return zelf
            } else {
                return Image(self)
            }
        case 1, -3:
            var pixels = [Pixel]()
            
            for y in xRange {
                for x in yRange.reversed() {
                    pixels.append(self[y, x])
                }
            }
            
            return Image(width: height, height: width, pixels: pixels)
        case 2, -2:
            var pixels = [Pixel]()
            
            for y in yRange.reversed() {
                for x in xRange.reversed() {
                    pixels.append(self[x, y])
                }
            }
            
            return Image(width: width, height: height, pixels: pixels)
        case 3, -1:
            var pixels = [Pixel]()
            
            for y in xRange.reversed() {
                for x in yRange {
                    pixels.append(self[y, x])
                }
            }
            
            return Image(width: height, height: width, pixels: pixels)
        default:
            fatalError("Never reaches here.")
        }
    }

    public func rotated(by angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[Int(round($0)), Int(round($1)), extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, extrapolatedBy: extrapolationMethod)
    }
}
