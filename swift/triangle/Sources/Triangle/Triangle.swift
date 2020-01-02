//Solution goes in Sources

enum triangleKind:String{ case Equilateral,Isosceles,Scalene,ErrorKind}

struct Triangle {
    var _side1:Double
    var _side2:Double
    var _side3:Double

    init(_ side1:Int,_ side2:Int,_ side3:Int) {
        self.init(Double(side1),Double(side2),Double(side3))
    }

    init(_ side1:Double,_ side2:Double,_ side3:Double) {
        _side1 = side1
        _side2 = side2
        _side3 = side3
    }

    var kind:String{

        if !(_side1.magnitude.sign == .plus && _side2.magnitude.sign == .plus && _side3.magnitude.sign == .plus ) ||
            (_side1 == .zero || _side2 == .zero || _side3 == .zero) ||
            !(_side1 + _side2 >= _side3 && _side2 + _side3 >= _side1 && _side3 + _side1 >= _side2){
            return triangleKind.ErrorKind.rawValue
        }
//        case (-1,_,_),(_,-1,_),(_,_,-1),(0,0,0):
//            return triangleKind.ErrorKind.rawValue
//        default:
//            break
//        }
//        if !(_side1 + _side2 >= _side3 && _side2 + _side3 >= _side1 && _side3 + _side1 >= _side2) {
//                return triangleKind.ErrorKind.rawValue
//        }
        switch (_side1 == _side2,_side2 == _side3, _side3 == _side1) {
        case (true, true, true):
            return triangleKind.Equilateral.rawValue
        case (true, _,_),(_,true,_),(_,_, true):
            return triangleKind.Isosceles.rawValue
        default:
            return triangleKind.Scalene.rawValue
            }
    }
}


/**

 struct Triangle {
     let triangleKind = (Equilateral:"Equilateral", Isosceles:"Isosceles", Scalene:"Scalene", ErrorKind:"ErrorKind")
     let kind: String

     init(_ a:Double, _ b:Double, _ c:Double){
         let sortedLegs = [a, b, c].sorted()

         switch (sortedLegs[0], sortedLegs[1], sortedLegs[2]) {
             case (let a, let b, let c) where a == 0 || a + b <= c:
                 kind = triangleKind.ErrorKind
             case (let a, _, let c) where a == c:
                 kind = triangleKind.Equilateral
             case (let a, let b, let c) where b == c || b == a:
                 kind = triangleKind.Isosceles
             default:
                 kind = triangleKind.Scalene
         }
     }
 }
 */
