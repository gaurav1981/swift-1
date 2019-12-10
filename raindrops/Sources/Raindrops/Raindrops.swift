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

struct Raindrops {
    let num:Int

    var sounds:String {
        var str = ""
        (1...num).forEach {
            if num % $0 == 0{
                switch $0{
                case 3:
                    str += pling
                case 5:
                    str += plang
                case 7:
                    str += plong
                default:
                    break
                }
            }
        }
        return str.isEmpty ? "\(num)" : str
    }

    init(_ num:Int) {
        self.num = num
    }
}
