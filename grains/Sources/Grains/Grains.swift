//Solution goes in Sources
import Foundation

enum GrainsError:Error {
    case inputTooLow(String)
    case inputTooHigh(String)
}

func square(_ squarePos:Int) throws -> UInt {
    switch squarePos {
    case ...0:
        throw
            GrainsError.inputTooLow("Input[\(squarePos)] invalid. Input should be between 1 and 64 (inclusive)")
    case 65...:
        throw GrainsError.inputTooHigh("Input[\(squarePos)] invalid. Input should be between 1 and 64 (inclusive)")
    default:
        return UInt(pow(2.0, Double(squarePos - 1)))
    }
}

var total:UInt {
    return UInt.max
}
