import Foundation
extension ImageProtocol where Element == RGBA<UInt8> { // Convolution
    @_specialize(exported: true, where Self == Image<RGBA<UInt8>>, Kernel == Image<Int>)
    @_specialize(exported: true, where Self == Image<RGBA<UInt8>>, Kernel == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<UInt8>>, Kernel == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<UInt8>>, Kernel == ImageSlice<Int>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<UInt8>> = .edge) -> Image<RGBA<UInt8>> where Kernel.Pixel == Int {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    @_specialize(exported: true, where Self == Image<RGBA<UInt8>>, Kernel == Image<Float>)
    @_specialize(exported: true, where Self == Image<RGBA<UInt8>>, Kernel == ImageSlice<Float>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<UInt8>>, Kernel == Image<Float>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<UInt8>>, Kernel == ImageSlice<Float>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<UInt8>> = .edge) -> Image<RGBA<UInt8>> where Kernel.Pixel == Float {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    @_specialize(exported: true, where Self == Image<RGBA<UInt8>>, Kernel == Image<Double>)
    @_specialize(exported: true, where Self == Image<RGBA<UInt8>>, Kernel == ImageSlice<Double>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<UInt8>>, Kernel == Image<Double>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<UInt8>>, Kernel == ImageSlice<Double>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<UInt8>> = .edge) -> Image<RGBA<UInt8>> where Kernel.Pixel == Double {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension ImageProtocol where Element == RGBA<UInt16> { // Convolution
    @_specialize(exported: true, where Self == Image<RGBA<UInt16>>, Kernel == Image<Int>)
    @_specialize(exported: true, where Self == Image<RGBA<UInt16>>, Kernel == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<UInt16>>, Kernel == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<UInt16>>, Kernel == ImageSlice<Int>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<UInt16>> = .edge) -> Image<RGBA<UInt16>> where Kernel.Pixel == Int {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    @_specialize(exported: true, where Self == Image<RGBA<UInt16>>, Kernel == Image<Float>)
    @_specialize(exported: true, where Self == Image<RGBA<UInt16>>, Kernel == ImageSlice<Float>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<UInt16>>, Kernel == Image<Float>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<UInt16>>, Kernel == ImageSlice<Float>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<UInt16>> = .edge) -> Image<RGBA<UInt16>> where Kernel.Pixel == Float {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    @_specialize(exported: true, where Self == Image<RGBA<UInt16>>, Kernel == Image<Double>)
    @_specialize(exported: true, where Self == Image<RGBA<UInt16>>, Kernel == ImageSlice<Double>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<UInt16>>, Kernel == Image<Double>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<UInt16>>, Kernel == ImageSlice<Double>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<UInt16>> = .edge) -> Image<RGBA<UInt16>> where Kernel.Pixel == Double {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension ImageProtocol where Element == RGBA<UInt32> { // Convolution
    @_specialize(exported: true, where Self == Image<RGBA<UInt32>>, Kernel == Image<Int>)
    @_specialize(exported: true, where Self == Image<RGBA<UInt32>>, Kernel == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<UInt32>>, Kernel == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<UInt32>>, Kernel == ImageSlice<Int>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<UInt32>> = .edge) -> Image<RGBA<UInt32>> where Kernel.Pixel == Int {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    @_specialize(exported: true, where Self == Image<RGBA<UInt32>>, Kernel == Image<Float>)
    @_specialize(exported: true, where Self == Image<RGBA<UInt32>>, Kernel == ImageSlice<Float>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<UInt32>>, Kernel == Image<Float>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<UInt32>>, Kernel == ImageSlice<Float>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<UInt32>> = .edge) -> Image<RGBA<UInt32>> where Kernel.Pixel == Float {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    @_specialize(exported: true, where Self == Image<RGBA<UInt32>>, Kernel == Image<Double>)
    @_specialize(exported: true, where Self == Image<RGBA<UInt32>>, Kernel == ImageSlice<Double>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<UInt32>>, Kernel == Image<Double>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<UInt32>>, Kernel == ImageSlice<Double>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<UInt32>> = .edge) -> Image<RGBA<UInt32>> where Kernel.Pixel == Double {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension ImageProtocol where Element == RGBA<Int> { // Convolution
    @_specialize(exported: true, where Self == Image<RGBA<Int>>, Kernel == Image<Int>)
    @_specialize(exported: true, where Self == Image<RGBA<Int>>, Kernel == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<Int>>, Kernel == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<Int>>, Kernel == ImageSlice<Int>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<Int>> = .edge) -> Image<RGBA<Int>> where Kernel.Pixel == Int {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    @_specialize(exported: true, where Self == Image<RGBA<Int>>, Kernel == Image<Float>)
    @_specialize(exported: true, where Self == Image<RGBA<Int>>, Kernel == ImageSlice<Float>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<Int>>, Kernel == Image<Float>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<Int>>, Kernel == ImageSlice<Float>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<Int>> = .edge) -> Image<RGBA<Int>> where Kernel.Pixel == Float {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    @_specialize(exported: true, where Self == Image<RGBA<Int>>, Kernel == Image<Double>)
    @_specialize(exported: true, where Self == Image<RGBA<Int>>, Kernel == ImageSlice<Double>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<Int>>, Kernel == Image<Double>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<Int>>, Kernel == ImageSlice<Double>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<Int>> = .edge) -> Image<RGBA<Int>> where Kernel.Pixel == Double {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension ImageProtocol where Element == RGBA<Float> { // Convolution
    @_specialize(exported: true, where Self == Image<RGBA<Float>>, Kernel == Image<Int>)
    @_specialize(exported: true, where Self == Image<RGBA<Float>>, Kernel == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<Float>>, Kernel == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<Float>>, Kernel == ImageSlice<Int>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<Float>> = .edge) -> Image<RGBA<Float>> where Kernel.Pixel == Int {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    @_specialize(exported: true, where Self == Image<RGBA<Float>>, Kernel == Image<Float>)
    @_specialize(exported: true, where Self == Image<RGBA<Float>>, Kernel == ImageSlice<Float>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<Float>>, Kernel == Image<Float>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<Float>>, Kernel == ImageSlice<Float>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<Float>> = .edge) -> Image<RGBA<Float>> where Kernel.Pixel == Float {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    @_specialize(exported: true, where Self == Image<RGBA<Float>>, Kernel == Image<Double>)
    @_specialize(exported: true, where Self == Image<RGBA<Float>>, Kernel == ImageSlice<Double>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<Float>>, Kernel == Image<Double>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<Float>>, Kernel == ImageSlice<Double>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<Float>> = .edge) -> Image<RGBA<Float>> where Kernel.Pixel == Double {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension ImageProtocol where Element == RGBA<Double> { // Convolution
    @_specialize(exported: true, where Self == Image<RGBA<Double>>, Kernel == Image<Int>)
    @_specialize(exported: true, where Self == Image<RGBA<Double>>, Kernel == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<Double>>, Kernel == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<Double>>, Kernel == ImageSlice<Int>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<Double>> = .edge) -> Image<RGBA<Double>> where Kernel.Pixel == Int {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    @_specialize(exported: true, where Self == Image<RGBA<Double>>, Kernel == Image<Float>)
    @_specialize(exported: true, where Self == Image<RGBA<Double>>, Kernel == ImageSlice<Float>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<Double>>, Kernel == Image<Float>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<Double>>, Kernel == ImageSlice<Float>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<Double>> = .edge) -> Image<RGBA<Double>> where Kernel.Pixel == Float {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    @_specialize(exported: true, where Self == Image<RGBA<Double>>, Kernel == Image<Double>)
    @_specialize(exported: true, where Self == Image<RGBA<Double>>, Kernel == ImageSlice<Double>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<Double>>, Kernel == Image<Double>)
    @_specialize(exported: true, where Self == ImageSlice<RGBA<Double>>, Kernel == ImageSlice<Double>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<Double>> = .edge) -> Image<RGBA<Double>> where Kernel.Pixel == Double {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension ImageProtocol where Element == UInt8 { // Convolution
    @_specialize(exported: true, where Self == Image<UInt8>, Kernel == Image<Int>)
    @_specialize(exported: true, where Self == Image<UInt8>, Kernel == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, Kernel == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, Kernel == ImageSlice<Int>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<UInt8> = .edge) -> Image<UInt8> where Kernel.Pixel == Int {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    @_specialize(exported: true, where Self == Image<UInt8>, Kernel == Image<Float>)
    @_specialize(exported: true, where Self == Image<UInt8>, Kernel == ImageSlice<Float>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, Kernel == Image<Float>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, Kernel == ImageSlice<Float>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<UInt8> = .edge) -> Image<UInt8> where Kernel.Pixel == Float {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    @_specialize(exported: true, where Self == Image<UInt8>, Kernel == Image<Double>)
    @_specialize(exported: true, where Self == Image<UInt8>, Kernel == ImageSlice<Double>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, Kernel == Image<Double>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, Kernel == ImageSlice<Double>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<UInt8> = .edge) -> Image<UInt8> where Kernel.Pixel == Double {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension ImageProtocol where Element == UInt16 { // Convolution
    @_specialize(exported: true, where Self == Image<UInt16>, Kernel == Image<Int>)
    @_specialize(exported: true, where Self == Image<UInt16>, Kernel == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, Kernel == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, Kernel == ImageSlice<Int>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<UInt16> = .edge) -> Image<UInt16> where Kernel.Pixel == Int {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    @_specialize(exported: true, where Self == Image<UInt16>, Kernel == Image<Float>)
    @_specialize(exported: true, where Self == Image<UInt16>, Kernel == ImageSlice<Float>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, Kernel == Image<Float>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, Kernel == ImageSlice<Float>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<UInt16> = .edge) -> Image<UInt16> where Kernel.Pixel == Float {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    @_specialize(exported: true, where Self == Image<UInt16>, Kernel == Image<Double>)
    @_specialize(exported: true, where Self == Image<UInt16>, Kernel == ImageSlice<Double>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, Kernel == Image<Double>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, Kernel == ImageSlice<Double>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<UInt16> = .edge) -> Image<UInt16> where Kernel.Pixel == Double {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension ImageProtocol where Element == UInt32 { // Convolution
    @_specialize(exported: true, where Self == Image<UInt32>, Kernel == Image<Int>)
    @_specialize(exported: true, where Self == Image<UInt32>, Kernel == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, Kernel == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, Kernel == ImageSlice<Int>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<UInt32> = .edge) -> Image<UInt32> where Kernel.Pixel == Int {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    @_specialize(exported: true, where Self == Image<UInt32>, Kernel == Image<Float>)
    @_specialize(exported: true, where Self == Image<UInt32>, Kernel == ImageSlice<Float>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, Kernel == Image<Float>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, Kernel == ImageSlice<Float>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<UInt32> = .edge) -> Image<UInt32> where Kernel.Pixel == Float {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    @_specialize(exported: true, where Self == Image<UInt32>, Kernel == Image<Double>)
    @_specialize(exported: true, where Self == Image<UInt32>, Kernel == ImageSlice<Double>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, Kernel == Image<Double>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, Kernel == ImageSlice<Double>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<UInt32> = .edge) -> Image<UInt32> where Kernel.Pixel == Double {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension ImageProtocol where Element == Int { // Convolution
    @_specialize(exported: true, where Self == Image<Int>, Kernel == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, Kernel == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, Kernel == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, Kernel == ImageSlice<Int>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Int> = .edge) -> Image<Int> where Kernel.Pixel == Int {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    @_specialize(exported: true, where Self == Image<Int>, Kernel == Image<Float>)
    @_specialize(exported: true, where Self == Image<Int>, Kernel == ImageSlice<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, Kernel == Image<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, Kernel == ImageSlice<Float>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Int> = .edge) -> Image<Int> where Kernel.Pixel == Float {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    @_specialize(exported: true, where Self == Image<Int>, Kernel == Image<Double>)
    @_specialize(exported: true, where Self == Image<Int>, Kernel == ImageSlice<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, Kernel == Image<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, Kernel == ImageSlice<Double>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Int> = .edge) -> Image<Int> where Kernel.Pixel == Double {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension ImageProtocol where Element == Float { // Convolution
    @_specialize(exported: true, where Self == Image<Float>, Kernel == Image<Int>)
    @_specialize(exported: true, where Self == Image<Float>, Kernel == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, Kernel == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, Kernel == ImageSlice<Int>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Float> = .edge) -> Image<Float> where Kernel.Pixel == Int {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    @_specialize(exported: true, where Self == Image<Float>, Kernel == Image<Float>)
    @_specialize(exported: true, where Self == Image<Float>, Kernel == ImageSlice<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, Kernel == Image<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, Kernel == ImageSlice<Float>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Float> = .edge) -> Image<Float> where Kernel.Pixel == Float {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    @_specialize(exported: true, where Self == Image<Float>, Kernel == Image<Double>)
    @_specialize(exported: true, where Self == Image<Float>, Kernel == ImageSlice<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, Kernel == Image<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, Kernel == ImageSlice<Double>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Float> = .edge) -> Image<Float> where Kernel.Pixel == Double {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension ImageProtocol where Element == Double { // Convolution
    @_specialize(exported: true, where Self == Image<Double>, Kernel == Image<Int>)
    @_specialize(exported: true, where Self == Image<Double>, Kernel == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, Kernel == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, Kernel == ImageSlice<Int>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Double> = .edge) -> Image<Double> where Kernel.Pixel == Int {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    @_specialize(exported: true, where Self == Image<Double>, Kernel == Image<Float>)
    @_specialize(exported: true, where Self == Image<Double>, Kernel == ImageSlice<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, Kernel == Image<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, Kernel == ImageSlice<Float>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Double> = .edge) -> Image<Double> where Kernel.Pixel == Float {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    @_specialize(exported: true, where Self == Image<Double>, Kernel == Image<Double>)
    @_specialize(exported: true, where Self == Image<Double>, Kernel == ImageSlice<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, Kernel == Image<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, Kernel == ImageSlice<Double>)
    public func convoluted<Kernel : ImageProtocol>(with kernel: Kernel, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Double> = .edge) -> Image<Double> where Kernel.Pixel == Double {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension ImageProtocol where Element == RGBA<UInt8> { // Interpolation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Double, y: Double) -> RGBA<UInt8> {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1] }
    }

    public subscript(x: Double, y: Double, interpolatedBy interpolationMethod: InterpolationMethod) -> RGBA<UInt8> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1] }
        }
    }
    
    public subscript(x: Double, y: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> RGBA<UInt8> {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
    }
    
    public subscript(x: Double, y: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> RGBA<UInt8> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
        }
    }
}

extension ImageProtocol where Element == RGBA<UInt16> { // Interpolation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Double, y: Double) -> RGBA<UInt16> {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1] }
    }

    public subscript(x: Double, y: Double, interpolatedBy interpolationMethod: InterpolationMethod) -> RGBA<UInt16> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1] }
        }
    }
    
    public subscript(x: Double, y: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> RGBA<UInt16> {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
    }
    
    public subscript(x: Double, y: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> RGBA<UInt16> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
        }
    }
}

extension ImageProtocol where Element == RGBA<UInt32> { // Interpolation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Double, y: Double) -> RGBA<UInt32> {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1] }
    }

    public subscript(x: Double, y: Double, interpolatedBy interpolationMethod: InterpolationMethod) -> RGBA<UInt32> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1] }
        }
    }
    
    public subscript(x: Double, y: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> RGBA<UInt32> {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
    }
    
    public subscript(x: Double, y: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> RGBA<UInt32> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
        }
    }
}

extension ImageProtocol where Element == RGBA<Int> { // Interpolation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Double, y: Double) -> RGBA<Int> {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1] }
    }

    public subscript(x: Double, y: Double, interpolatedBy interpolationMethod: InterpolationMethod) -> RGBA<Int> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1] }
        }
    }
    
    public subscript(x: Double, y: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> RGBA<Int> {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
    }
    
    public subscript(x: Double, y: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> RGBA<Int> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
        }
    }
}

extension ImageProtocol where Element == RGBA<Float> { // Interpolation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Double, y: Double) -> RGBA<Float> {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1] }
    }

    public subscript(x: Double, y: Double, interpolatedBy interpolationMethod: InterpolationMethod) -> RGBA<Float> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1] }
        }
    }
    
    public subscript(x: Double, y: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> RGBA<Float> {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
    }
    
    public subscript(x: Double, y: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> RGBA<Float> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
        }
    }
}

extension ImageProtocol where Element == RGBA<Double> { // Interpolation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Double, y: Double) -> RGBA<Double> {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1] }
    }

    public subscript(x: Double, y: Double, interpolatedBy interpolationMethod: InterpolationMethod) -> RGBA<Double> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1] }
        }
    }
    
    public subscript(x: Double, y: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> RGBA<Double> {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
    }
    
    public subscript(x: Double, y: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> RGBA<Double> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
        }
    }
}

extension ImageProtocol where Element == UInt8 { // Interpolation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Double, y: Double) -> UInt8 {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1] }
    }

    public subscript(x: Double, y: Double, interpolatedBy interpolationMethod: InterpolationMethod) -> UInt8 {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1] }
        }
    }
    
    public subscript(x: Double, y: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> UInt8 {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
    }
    
    public subscript(x: Double, y: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> UInt8 {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
        }
    }
}

extension ImageProtocol where Element == UInt16 { // Interpolation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Double, y: Double) -> UInt16 {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1] }
    }

    public subscript(x: Double, y: Double, interpolatedBy interpolationMethod: InterpolationMethod) -> UInt16 {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1] }
        }
    }
    
    public subscript(x: Double, y: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> UInt16 {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
    }
    
    public subscript(x: Double, y: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> UInt16 {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
        }
    }
}

extension ImageProtocol where Element == UInt32 { // Interpolation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Double, y: Double) -> UInt32 {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1] }
    }

    public subscript(x: Double, y: Double, interpolatedBy interpolationMethod: InterpolationMethod) -> UInt32 {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1] }
        }
    }
    
    public subscript(x: Double, y: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> UInt32 {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
    }
    
    public subscript(x: Double, y: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> UInt32 {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
        }
    }
}

extension ImageProtocol where Element == Int { // Interpolation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Double, y: Double) -> Int {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1] }
    }

    public subscript(x: Double, y: Double, interpolatedBy interpolationMethod: InterpolationMethod) -> Int {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1] }
        }
    }
    
    public subscript(x: Double, y: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Int {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
    }
    
    public subscript(x: Double, y: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Int {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
        }
    }
}

extension ImageProtocol where Element == Float { // Interpolation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Double, y: Double) -> Float {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1] }
    }

    public subscript(x: Double, y: Double, interpolatedBy interpolationMethod: InterpolationMethod) -> Float {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1] }
        }
    }
    
    public subscript(x: Double, y: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Float {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
    }
    
    public subscript(x: Double, y: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Float {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
        }
    }
}

extension ImageProtocol where Element == Double { // Interpolation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Double, y: Double) -> Double {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1] }
    }

    public subscript(x: Double, y: Double, interpolatedBy interpolationMethod: InterpolationMethod) -> Double {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1] }
        }
    }
    
    public subscript(x: Double, y: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Double {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
    }
    
    public subscript(x: Double, y: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Double {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableD }, product: Pixel.productD, sum: +, toOriginal: Pixel.init(summableD:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
        }
    }
}

extension ImageProtocol where Element == RGBA<UInt8> { // Resizing
    public func resizedTo(width: Int, height: Int) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y] },
                extrapolatedPixelAt: { x, y in self[x, y, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, extrapolatedBy: .edge] }
            )
        }
    }

    public func resizedTo(width: Int, height: Int, interpolatedBy interpolationMethod: InterpolationMethod) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        let isAntialiased: Bool
        if case .nearestNeighbor = interpolationMethod {
            isAntialiased = false
        } else {
            isAntialiased = true
        }
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        }
    }
}

extension ImageProtocol where Element == RGBA<UInt16> { // Resizing
    public func resizedTo(width: Int, height: Int) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y] },
                extrapolatedPixelAt: { x, y in self[x, y, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, extrapolatedBy: .edge] }
            )
        }
    }

    public func resizedTo(width: Int, height: Int, interpolatedBy interpolationMethod: InterpolationMethod) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        let isAntialiased: Bool
        if case .nearestNeighbor = interpolationMethod {
            isAntialiased = false
        } else {
            isAntialiased = true
        }
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        }
    }
}

extension ImageProtocol where Element == RGBA<UInt32> { // Resizing
    public func resizedTo(width: Int, height: Int) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y] },
                extrapolatedPixelAt: { x, y in self[x, y, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, extrapolatedBy: .edge] }
            )
        }
    }

    public func resizedTo(width: Int, height: Int, interpolatedBy interpolationMethod: InterpolationMethod) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        let isAntialiased: Bool
        if case .nearestNeighbor = interpolationMethod {
            isAntialiased = false
        } else {
            isAntialiased = true
        }
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        }
    }
}

extension ImageProtocol where Element == RGBA<Int> { // Resizing
    public func resizedTo(width: Int, height: Int) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y] },
                extrapolatedPixelAt: { x, y in self[x, y, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, extrapolatedBy: .edge] }
            )
        }
    }

    public func resizedTo(width: Int, height: Int, interpolatedBy interpolationMethod: InterpolationMethod) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        let isAntialiased: Bool
        if case .nearestNeighbor = interpolationMethod {
            isAntialiased = false
        } else {
            isAntialiased = true
        }
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        }
    }
}

extension ImageProtocol where Element == RGBA<Float> { // Resizing
    public func resizedTo(width: Int, height: Int) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y] },
                extrapolatedPixelAt: { x, y in self[x, y, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, extrapolatedBy: .edge] }
            )
        }
    }

    public func resizedTo(width: Int, height: Int, interpolatedBy interpolationMethod: InterpolationMethod) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        let isAntialiased: Bool
        if case .nearestNeighbor = interpolationMethod {
            isAntialiased = false
        } else {
            isAntialiased = true
        }
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        }
    }
}

extension ImageProtocol where Element == RGBA<Double> { // Resizing
    public func resizedTo(width: Int, height: Int) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y] },
                extrapolatedPixelAt: { x, y in self[x, y, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, extrapolatedBy: .edge] }
            )
        }
    }

    public func resizedTo(width: Int, height: Int, interpolatedBy interpolationMethod: InterpolationMethod) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        let isAntialiased: Bool
        if case .nearestNeighbor = interpolationMethod {
            isAntialiased = false
        } else {
            isAntialiased = true
        }
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        }
    }
}

extension ImageProtocol where Element == UInt8 { // Resizing
    public func resizedTo(width: Int, height: Int) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y] },
                extrapolatedPixelAt: { x, y in self[x, y, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, extrapolatedBy: .edge] }
            )
        }
    }

    public func resizedTo(width: Int, height: Int, interpolatedBy interpolationMethod: InterpolationMethod) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        let isAntialiased: Bool
        if case .nearestNeighbor = interpolationMethod {
            isAntialiased = false
        } else {
            isAntialiased = true
        }
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        }
    }
}

extension ImageProtocol where Element == UInt16 { // Resizing
    public func resizedTo(width: Int, height: Int) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y] },
                extrapolatedPixelAt: { x, y in self[x, y, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, extrapolatedBy: .edge] }
            )
        }
    }

    public func resizedTo(width: Int, height: Int, interpolatedBy interpolationMethod: InterpolationMethod) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        let isAntialiased: Bool
        if case .nearestNeighbor = interpolationMethod {
            isAntialiased = false
        } else {
            isAntialiased = true
        }
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        }
    }
}

extension ImageProtocol where Element == UInt32 { // Resizing
    public func resizedTo(width: Int, height: Int) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y] },
                extrapolatedPixelAt: { x, y in self[x, y, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, extrapolatedBy: .edge] }
            )
        }
    }

    public func resizedTo(width: Int, height: Int, interpolatedBy interpolationMethod: InterpolationMethod) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        let isAntialiased: Bool
        if case .nearestNeighbor = interpolationMethod {
            isAntialiased = false
        } else {
            isAntialiased = true
        }
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        }
    }
}

extension ImageProtocol where Element == Int { // Resizing
    public func resizedTo(width: Int, height: Int) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y] },
                extrapolatedPixelAt: { x, y in self[x, y, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, extrapolatedBy: .edge] }
            )
        }
    }

    public func resizedTo(width: Int, height: Int, interpolatedBy interpolationMethod: InterpolationMethod) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        let isAntialiased: Bool
        if case .nearestNeighbor = interpolationMethod {
            isAntialiased = false
        } else {
            isAntialiased = true
        }
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        }
    }
}

extension ImageProtocol where Element == Float { // Resizing
    public func resizedTo(width: Int, height: Int) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y] },
                extrapolatedPixelAt: { x, y in self[x, y, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, extrapolatedBy: .edge] }
            )
        }
    }

    public func resizedTo(width: Int, height: Int, interpolatedBy interpolationMethod: InterpolationMethod) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        let isAntialiased: Bool
        if case .nearestNeighbor = interpolationMethod {
            isAntialiased = false
        } else {
            isAntialiased = true
        }
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        }
    }
}

extension ImageProtocol where Element == Double { // Resizing
    public func resizedTo(width: Int, height: Int) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y] },
                extrapolatedPixelAt: { x, y in self[x, y, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, extrapolatedBy: .edge] }
            )
        }
    }

    public func resizedTo(width: Int, height: Int, interpolatedBy interpolationMethod: InterpolationMethod) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        let isAntialiased: Bool
        if case .nearestNeighbor = interpolationMethod {
            isAntialiased = false
        } else {
            isAntialiased = true
        }
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        }
    }
}

extension ImageProtocol where Element == RGBA<UInt8> { // Rotation
    public func rotated(byDegrees angle: Int) -> Image<Pixel> {
        if angle % 90 == 0 {
            return rotated(byRightAngleInDegrees: angle)
        } else {
            return rotated(byDegrees: Double(angle))
        }
    }

    public func rotated(by angle: Double) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: .filling(.selfZero)] }
    }
    
    public func rotated(byDegrees angle: Double) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi)
    }

    public func rotated(by angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, extrapolatedBy: extrapolationMethod)
    }

    public func rotated(by angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod)
    }
}

extension ImageProtocol where Element == RGBA<UInt16> { // Rotation
    public func rotated(byDegrees angle: Int) -> Image<Pixel> {
        if angle % 90 == 0 {
            return rotated(byRightAngleInDegrees: angle)
        } else {
            return rotated(byDegrees: Double(angle))
        }
    }

    public func rotated(by angle: Double) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: .filling(.selfZero)] }
    }
    
    public func rotated(byDegrees angle: Double) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi)
    }

    public func rotated(by angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, extrapolatedBy: extrapolationMethod)
    }

    public func rotated(by angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod)
    }
}

extension ImageProtocol where Element == RGBA<UInt32> { // Rotation
    public func rotated(byDegrees angle: Int) -> Image<Pixel> {
        if angle % 90 == 0 {
            return rotated(byRightAngleInDegrees: angle)
        } else {
            return rotated(byDegrees: Double(angle))
        }
    }

    public func rotated(by angle: Double) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: .filling(.selfZero)] }
    }
    
    public func rotated(byDegrees angle: Double) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi)
    }

    public func rotated(by angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, extrapolatedBy: extrapolationMethod)
    }

    public func rotated(by angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod)
    }
}

extension ImageProtocol where Element == RGBA<Int> { // Rotation
    public func rotated(byDegrees angle: Int) -> Image<Pixel> {
        if angle % 90 == 0 {
            return rotated(byRightAngleInDegrees: angle)
        } else {
            return rotated(byDegrees: Double(angle))
        }
    }

    public func rotated(by angle: Double) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: .filling(.selfZero)] }
    }
    
    public func rotated(byDegrees angle: Double) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi)
    }

    public func rotated(by angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, extrapolatedBy: extrapolationMethod)
    }

    public func rotated(by angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod)
    }
}

extension ImageProtocol where Element == RGBA<Float> { // Rotation
    public func rotated(byDegrees angle: Int) -> Image<Pixel> {
        if angle % 90 == 0 {
            return rotated(byRightAngleInDegrees: angle)
        } else {
            return rotated(byDegrees: Double(angle))
        }
    }

    public func rotated(by angle: Double) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: .filling(.selfZero)] }
    }
    
    public func rotated(byDegrees angle: Double) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi)
    }

    public func rotated(by angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, extrapolatedBy: extrapolationMethod)
    }

    public func rotated(by angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod)
    }
}

extension ImageProtocol where Element == RGBA<Double> { // Rotation
    public func rotated(byDegrees angle: Int) -> Image<Pixel> {
        if angle % 90 == 0 {
            return rotated(byRightAngleInDegrees: angle)
        } else {
            return rotated(byDegrees: Double(angle))
        }
    }

    public func rotated(by angle: Double) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: .filling(.selfZero)] }
    }
    
    public func rotated(byDegrees angle: Double) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi)
    }

    public func rotated(by angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, extrapolatedBy: extrapolationMethod)
    }

    public func rotated(by angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod)
    }
}

extension ImageProtocol where Element == UInt8 { // Rotation
    public func rotated(byDegrees angle: Int) -> Image<Pixel> {
        if angle % 90 == 0 {
            return rotated(byRightAngleInDegrees: angle)
        } else {
            return rotated(byDegrees: Double(angle))
        }
    }

    public func rotated(by angle: Double) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: .filling(.selfZero)] }
    }
    
    public func rotated(byDegrees angle: Double) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi)
    }

    public func rotated(by angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, extrapolatedBy: extrapolationMethod)
    }

    public func rotated(by angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod)
    }
}

extension ImageProtocol where Element == UInt16 { // Rotation
    public func rotated(byDegrees angle: Int) -> Image<Pixel> {
        if angle % 90 == 0 {
            return rotated(byRightAngleInDegrees: angle)
        } else {
            return rotated(byDegrees: Double(angle))
        }
    }

    public func rotated(by angle: Double) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: .filling(.selfZero)] }
    }
    
    public func rotated(byDegrees angle: Double) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi)
    }

    public func rotated(by angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, extrapolatedBy: extrapolationMethod)
    }

    public func rotated(by angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod)
    }
}

extension ImageProtocol where Element == UInt32 { // Rotation
    public func rotated(byDegrees angle: Int) -> Image<Pixel> {
        if angle % 90 == 0 {
            return rotated(byRightAngleInDegrees: angle)
        } else {
            return rotated(byDegrees: Double(angle))
        }
    }

    public func rotated(by angle: Double) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: .filling(.selfZero)] }
    }
    
    public func rotated(byDegrees angle: Double) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi)
    }

    public func rotated(by angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, extrapolatedBy: extrapolationMethod)
    }

    public func rotated(by angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod)
    }
}

extension ImageProtocol where Element == Int { // Rotation
    public func rotated(byDegrees angle: Int) -> Image<Pixel> {
        if angle % 90 == 0 {
            return rotated(byRightAngleInDegrees: angle)
        } else {
            return rotated(byDegrees: Double(angle))
        }
    }

    public func rotated(by angle: Double) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: .filling(.selfZero)] }
    }
    
    public func rotated(byDegrees angle: Double) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi)
    }

    public func rotated(by angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, extrapolatedBy: extrapolationMethod)
    }

    public func rotated(by angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod)
    }
}

extension ImageProtocol where Element == Float { // Rotation
    public func rotated(byDegrees angle: Int) -> Image<Pixel> {
        if angle % 90 == 0 {
            return rotated(byRightAngleInDegrees: angle)
        } else {
            return rotated(byDegrees: Double(angle))
        }
    }

    public func rotated(by angle: Double) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: .filling(.selfZero)] }
    }
    
    public func rotated(byDegrees angle: Double) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi)
    }

    public func rotated(by angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, extrapolatedBy: extrapolationMethod)
    }

    public func rotated(by angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod)
    }
}

extension ImageProtocol where Element == Double { // Rotation
    public func rotated(byDegrees angle: Int) -> Image<Pixel> {
        if angle % 90 == 0 {
            return rotated(byRightAngleInDegrees: angle)
        } else {
            return rotated(byDegrees: Double(angle))
        }
    }

    public func rotated(by angle: Double) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: .filling(.selfZero)] }
    }
    
    public func rotated(byDegrees angle: Double) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi)
    }

    public func rotated(by angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, extrapolatedBy: extrapolationMethod)
    }

    public func rotated(by angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod)
    }
}

extension ImageProtocol where Element == RGBA<Bool> { // Rotation
    public func rotated(byDegrees angle: Int) -> Image<Pixel> {
        if angle % 90 == 0 {
            return rotated(byRightAngleInDegrees: angle)
        } else {
            return rotated(byDegrees: Double(angle))
        }
    }

    public func rotated(by angle: Double) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[Int(round($0)), Int(round($1)), extrapolatedBy: .filling(RGBA<Bool>(red: false, green: false, blue: false, alpha: false))] }
    }
    
    public func rotated(byDegrees angle: Double) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi)
    }
}

extension ImageProtocol where Element == Bool { // Rotation
    public func rotated(byDegrees angle: Int) -> Image<Pixel> {
        if angle % 90 == 0 {
            return rotated(byRightAngleInDegrees: angle)
        } else {
            return rotated(byDegrees: Double(angle))
        }
    }

    public func rotated(by angle: Double) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[Int(round($0)), Int(round($1)), extrapolatedBy: .filling(false)] }
    }
    
    public func rotated(byDegrees angle: Double) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi)
    }
}
