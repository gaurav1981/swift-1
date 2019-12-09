//Solution goes in Sources

import Foundation

extension Array {
    func accumulate<T:Equatable>(_ accu:@escaping (Iterator.Element)->T) ->[T]{
        var newArr = [T]()
        for eachElement in self{
            newArr.append(accu(eachElement))
        }
        return newArr
    }
}

//extension Array where Element == String {
//    func accumulate(_ accu:@escaping (String)->String) -> [String] {
//        var newArr = self
//        self.forEach{
//            newArr += [accu($0)]
//        }
//        return newArr
//    }
//}
