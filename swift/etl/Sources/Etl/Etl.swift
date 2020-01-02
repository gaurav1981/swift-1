import Foundation
//Solution goes in Sources
/**
 odl
 - 1 point: "A", "E", "I", "O", "U", "L", "N", "R", "S", "T",
 - 2 points: "D", "G",
 - 3 points: "B", "C", "M", "P",
 - 4 points: "F", "H", "V", "W", "Y",
 - 5 points: "K",
 - 8 points: "J", "X",
 - 10 points: "Q", "Z",

 new
 - "a" is worth 1 point.
 - "b" is worth 3 points.
 - "c" is worth 3 points.
 - "d" is worth 2 points.
 - Etc.
 */

//enum OldSystem {
//    static func points(_ forChar:Character)-> Int {
//        switch forChar {
//        case "A", "E", "I", "O", "U", "L", "N", "R", "S", "T":
//            return 1
//        case "D", "G":
//            return 2
//        case "B", "C", "M", "P":
//            return 3
//        case "F", "H", "V", "W", "Y":
//            return 4
//        case "K":
//            return 5
//        case"J", "X":
//            return 8
//        default:
//            return 10
//        }
//    }
//}
struct ETL {
    static func transform(_ old:[Int:[String]])->[String:Int] {
        var new = [String:Int]()
//        old.forEach{element in
//            element.value.forEach{
//                new[$0.lowercased()] = element.key
//            }
//        }
        new = old.reduce(into: new) { (result, element) in
            element.value.forEach{
                result[$0.lowercased()] = element.key
            }
        }
        return new
    }
}
