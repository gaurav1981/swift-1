//Solution goes in Sources
import Foundation

struct WordCount {
    let words:String
    func count() -> [String:Int] {
        var count = [String:Int]()
        let set = CharacterSet.whitespacesAndNewlines.union(.controlCharacters).union(.punctuationCharacters).union(.symbols)
        count = words.lowercased().components(separatedBy: set).filter({!$0.isEmpty}).reduce(into: count) { (result, next) in
            result[next, default: 0] += 1
        }
        return count
    }
}

