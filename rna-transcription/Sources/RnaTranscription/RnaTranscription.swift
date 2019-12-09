//Solution goes in Sources
import Foundation

struct Nucleotide {

    let dnaString:String

    func complementOfDNA() throws -> String  {
        var complementary = ""
        /**
         G -> C
         C -> G
         T -> A
         A -> U
         */
        try dnaString.forEach {
            switch $0{
            case "G":
                complementary += "C"
            case "C":
                complementary += "G"
            case "T":
                complementary += "A"
            case "A":
                complementary += "U"
            default:
                throw TranscriptionError.invalidNucleotide("\($0) is not a valid Nucleotide")
            }
        }
        return complementary
    }

    init(_ dna:String) {
        self.dnaString = dna
    }
}


enum TranscriptionError:Error{
    case invalidNucleotide(String)

}
