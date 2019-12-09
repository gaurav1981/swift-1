//Solution goes in Sources
import Foundation

class HelloWorld: NSObject {
    static func hello(_ name:String = "world") -> String {
        return "Hello," + " \(name.capitalized)!"
    }
}
