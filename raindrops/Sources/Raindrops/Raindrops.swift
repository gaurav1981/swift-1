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
//        let factors = (1...num).filter{num % $0 == 0}
        str = (1...num).filter{num % $0 == 0}.reduce(str) { (result, num) -> String in
            switch num{
            case 3:
                str += pling
            case 5:
                str += plang
            case 7:
                str += plong
            default:
                break
            }
            return str
        }
        return str.isEmpty ? "\(num)" : str
    }

    init(_ num:Int) {
        self.num = num
    }
}
