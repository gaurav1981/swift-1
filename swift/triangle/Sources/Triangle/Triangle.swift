//Solution goes in Sources

enum triangleKind:String{ case Equilateral,Isosceles,Scalene,ErrorKind}

struct Triangle {
    var _side1:Int
    var _side2:Int
    var _side3:Int

    init(_ side1:Int,_ side2:Int,_ side3:Int) {
        _side1 = side1
        _side2 = side2
        _side3 = side3
    }

    init(_ side1:Double,_ side2:Double,_ side3:Double) {
        self.init(Int(side1),Int(side2),Int(side3))
    }

    var kind:String{
        switch (_side1.signum(),_side2.signum(),_side3.signum()) {
        case (-1,_,_),(_,-1,_),(_,_,-1),(0,0,0):
            return triangleKind.ErrorKind.rawValue
        default:
            break
        }
        switch (_side1 == _side2,_side2 == _side3, _side3 == _side1) {
        case (true, true, true):
            return triangleKind.Equilateral.rawValue
        case (true, true,_):
            return triangleKind.Isosceles.rawValue
        case (true, _,true):
            return triangleKind.Isosceles.rawValue
        case (_,true, true):
            return triangleKind.Isosceles.rawValue
        default:
            return triangleKind.Scalene.rawValue
        }
    }
}
