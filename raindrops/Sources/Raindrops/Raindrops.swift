//Solution goes in Sources
/**

  If the number has 3 as a factor, output 'Pling'.
 - If the number has 5 as a factor, output 'Plang'.
 - If the number has 7 as a factor, output 'Plong'.
 - If the number does not have 3, 5, or 7 as a factor,
   just pass the number's digits straight through.
 */
let pling = "Pling"
let plang = "Plang"
let plong = "Plong"
let soundsDict = [3:pling, 5:plang,7:plong]
struct Raindrops {
    let num:Int

    var sounds:String {
        var str = ""
        str = (1...num).reduce("") { (result, next) -> String in
            if num % next == 0 {
                str += soundsDict[next] ?? ""
            }
            return str
        }
        return str.isEmpty ? "\(num)" : str
    }

    init(_ num:Int) {
        self.num = num
    }
}


/**

 class Raindrops {
     let sounds: String

     private static let harmonics = [
         (3, "Pling"),
         (5, "Plang"),
         (7, "Plong")
     ]

     init(_ n: Int) {
         let str = Raindrops
             .harmonics
             .reduce("") { $0 + (n % $1.0 == 0 ? $1.1 : "") }
         sounds = str.isEmpty ? "\(n)" : str
     }
 }
 */
