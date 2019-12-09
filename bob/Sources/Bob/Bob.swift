//Solution goes in Sources
import Foundation

let questionKeyWordsSet = Set<String>(["what","where","when","how","who","Did","Does","was"])
let questionMark = "?"
let exclamation = "!"
let fullStop = "."

enum Answers:String {
    case sure = "Sure."
    case chillout = "Whoa, chill out!"
    case Fine = "Fine. Be that way!"
    case whatever = "Whatever."
}

func hey(_ inputStrin:String) -> String {

    let onlyNumbers = CharacterSet.alphanumerics.subtracting(CharacterSet.letters)
    let containsOnlyNumbers = !CharacterSet(charactersIn: inputStrin).subtracting(CharacterSet.punctuationCharacters.union(.whitespaces)).intersection(onlyNumbers).isEmpty

    if inputStrin.isEmpty || (inputStrin.split(separator: Character(" ")).isEmpty){
        return Answers.Fine.rawValue
    } else if (inputStrin == inputStrin.uppercased() && !containsOnlyNumbers) {
        return Answers.chillout.rawValue
    } else if (inputStrin.hasSuffix(questionMark)){
        return Answers.sure.rawValue
    } else {
        return Answers.whatever.rawValue
    }
}
