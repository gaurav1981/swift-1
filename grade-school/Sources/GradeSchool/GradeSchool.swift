//Solution goes in Sources
public struct GradeSchool {
    private(set) var roster = [Int:[String]]()

    mutating func addStudent(_ name:String,grade:Int){
        guard roster[grade] != nil else {
            roster.updateValue([name], forKey: grade)
            return
        }
        roster[grade]!.append(name)
    }

    func studentsInGrade(_ grade:Int) -> [String] {
        return roster[grade] ?? []
    }

    var sortedRoster : [Int:[String]]{
        var sortedDic = [Int:[String]]()

        roster.keys.sorted(by: {$0 < $1}).forEach {
            sortedDic.updateValue(roster[$0]?.sorted() ?? [], forKey: $0)

        }
        return sortedDic
    }
}
