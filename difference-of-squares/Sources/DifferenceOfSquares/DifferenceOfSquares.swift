//Solution goes in Sources
import Foundation
struct Squares {
    var uptoNum:Int
    var sumOfSquares:Int {
        return Int((uptoNum*(uptoNum + 1)*(2*uptoNum + 1))/6)
    }
    var squareOfSum:Int{
        let sum = Double((uptoNum * (uptoNum + 1))/2)
        return Int(pow(sum, 2.0))
    }

    var differenceOfSquares:Int{
        return abs(squareOfSum - sumOfSquares)
    }
    
    init(_ num:Int){
        self.uptoNum = num
    }

}
