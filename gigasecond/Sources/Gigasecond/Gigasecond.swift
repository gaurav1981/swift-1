//Solution goes in Sources
import Foundation
let formatter :DateFormatter = {
    let from = DateFormatter()
    from.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
    return from
}()

struct Gigasecond:CustomStringConvertible {
    var dateString:String
    private var gigaSecondsFrom :String{
        let date = formatter.date(from: dateString)
        let gigaSecondsDate = Date(timeInterval: Double(1_000_000_000), since: date!)
        return formatter.string(from: gigaSecondsDate)
    }

    var description: String{
        return gigaSecondsFrom
    }

    init?(from date:String) {
        self.dateString = date
    }

}
