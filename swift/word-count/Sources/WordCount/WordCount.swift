//Solution goes in Sources
import Foundation

struct WordCount {
    let words:String
    func count() -> [String:Int] {
////        var count = [String:Int]()
//        count = words.lowercased().components(separatedBy: CharacterSet.alphanumerics.inverted).reduce(into: [:]) { (result, next) in
//            if !next.isEmpty{result[next, default: 0] += 1}
//        }
        return words.lowercased().components(separatedBy: CharacterSet.alphanumerics.inverted).reduce(into: [:]) { (result, next) in
            if !next.isEmpty{result[next, default: 0] += 1}
        }
    }

    //optimized version
    /**
     struct WordCount {

       init(words input: String) {
         words = input.components(separatedBy: CharacterSet.alphanumerics.inverted)
       }

       private let words: [String]

       func count() -> [String: Int] {
         return words.reduce(into: [:]) { results, word in
           if word.isEmpty { return }
           results[word.lowercased(), default: 0] += 1
         }
       }

     }

     */
}

