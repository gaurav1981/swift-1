//Solution goes in Sources
import Foundation

func isIsogram(_ str:String) -> Bool {
    let newStr = str.lowercased().replacingOccurrences(of: " ", with: "").replacingOccurrences(of: "-", with: "") //avg time is 115-120
    //    var newStr = str
    //    newStr.removeAll(where: {$0 == Character(" ") || $0 == Character("-") }) //gives a varied avg time of 112-120

    //variant 1
        let dic_cbt = Dictionary(zip(newStr.unicodeScalars, Array(repeating: 1, count: newStr.count)), uniquingKeysWith: +)
        return dic_cbt.values.allSatisfy({$0 == 1}) //avg test time for suite run with this is .109 - .120
//        return dic_cbt.values.first(where: {$0 > 1}) == nil //avg test time for suite with this is .129 or so

    //variant 2
    //    var fin = [String:Int]()
    //    fin = newStr.reduce(into: fin) { (result, char) in
    //        fin["\(char)", default: 0] += 1
    //    }// avg time is also between 138-172
    //    fin = newStr.reduce([:], { (result, char) -> [String:Int] in
    //        fin["\(char)", default: 0] += 1
    //        return fin
    //    }) // avg time to run is 142 or so
    //    print(fin)
    //    return fin.values.allSatisfy({$0 == 1}) //avg test time for suite run with this is .109 - .119
}


//func isIsogram(_ string: String) -> Bool {
//  let normalized = string.lowercased()
//                         .components(separatedBy: CharacterSet.letters.inverted)
//                         .joined()
//  return Set(normalized.characters).count == normalized.characters.count
//}
