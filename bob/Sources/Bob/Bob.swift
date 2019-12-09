//Solution goes in Sources
import Foundation

//let questionKeyWordsSet = Set<String>(["what","where","when","how","who","Did","Does","was"])
//let fullStop = "."
let questionMark = "?"
let exclamation = "!"

enum Answers:String {
    case sure = "Sure."
    case chillout = "Whoa, chill out!"
    case Fine = "Fine. Be that way!"
    case whatever = "Whatever."
}

func hey(_ inputStrin:String) -> String {
    let inputStrinCharSet = CharacterSet(charactersIn: inputStrin)
    let containsOnlyNumbers = inputStrinCharSet.subtracting(CharacterSet.decimalDigits.union(.punctuationCharacters).union(.whitespacesAndNewlines)).isEmpty
    let containsOnlyWhiteSpaces = inputStrinCharSet.subtracting(CharacterSet.whitespacesAndNewlines).isEmpty
    if inputStrin.isEmpty || containsOnlyWhiteSpaces {
        return Answers.Fine.rawValue
    } else if containsOnlyNumbers && inputStrin.hasSuffix(questionMark) || inputStrin.hasSuffix(questionMark) && !(inputStrin == inputStrin.uppercased()) {
        return Answers.sure.rawValue
    }
    else if inputStrin == inputStrin.uppercased() && !containsOnlyNumbers {// && !containsOnlyNumbers) {
        return Answers.chillout.rawValue
    } else {
        return Answers.whatever.rawValue
    }
}
