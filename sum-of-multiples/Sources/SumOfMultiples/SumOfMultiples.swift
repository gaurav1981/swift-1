//Solution goes in Sources
import Foundation

func toLimit(_ limit:Int, inMultiples: [Int]) -> Int {
    guard limit > 0 else {
        return 0
    }

    var uniquemultiplesSet = Set<Int>()

    inMultiples.filter{$0 != 0}.forEach{num in
        let _ =  (1..<limit).reduce(uniquemultiplesSet) { (result, next) -> Set<Int> in
            if next % num == 0 {
                uniquemultiplesSet.insert(next)
            }
            return uniquemultiplesSet
        }
    }
    return uniquemultiplesSet.reduce(0,+)
}
