//Solution goes in Sources
import Foundation
struct TwoFer{
    static func twoFer(name:String = "you") -> String {
        return "One for \(name == "you" ? name:name.capitalized)," + " one for me."
    }
}
