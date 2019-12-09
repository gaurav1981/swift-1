//Solution goes in Sources
import Foundation

func compute(_ firstDNS:String, against:String) -> Int?{
    guard firstDNS.count == against.count else {
        return nil
    }

    var d = 0
    //experimented this to see higher speed
    zip(firstDNS.unicodeScalars, against.unicodeScalars).forEach{
        d += ($0.0 != $0.1 ? 1:0)
    }

//    for (first,second) in zip(firstDNS.unicodeScalars, against.unicodeScalars){
//        if first != second {
//            d += 1
//        }
//    }
    return d
}
