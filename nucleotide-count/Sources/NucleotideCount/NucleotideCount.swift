//Solution goes in Sources
import Foundation

struct DNA {
    let strand:String

    func counts()->[String:Int]{
        var finalCount = [String:Int]()
        let _ = "TGCA".unicodeScalars.map {
            finalCount.updateValue(self.count($0.description), forKey: $0.description)
        }
        return finalCount
    }

    func count(_ dnaStrand:String) -> Int {
        var cnt = 0
        cnt = strand.unicodeScalars.reduce(cnt) { (result, strnd) -> Int in
            cnt += (strnd.description == dnaStrand ? 1: 0)
            return cnt
        }
        return cnt
    }

    init?(strand:String) {
        if !CharacterSet(charactersIn: strand).subtracting(CharacterSet(charactersIn: "TGCA")).isEmpty {
            return nil
        }
        self.strand = strand
    }
}
