import UIKit
//: ## Protocols
protocol AProtocol {
    func aFunc()
}
protocol BProtocol:AProtocol {          //Inherits protocol
    var computedProp:Int {get set}
}
//: ## Structs
struct AStruct:BProtocol {              //Implement protocol
    var prop:Int                        //Instance property
    static var typeProp = 3             //Type property
    var computedProp:Int {              //Computed property
        get {
            return prop
        }
        set(value) {
            self.prop = value
        }
    }
    
    
    func aFunc() {                      //Instance method
        //Do something
    }
    static func typeFunc() {            //Type method
        //Do something
    }
    
}
var aStructObject = AStruct(prop: 3)    //Use Memberwise initializer
//: ## Classes
class AClass {
    var prop:Int
    lazy var lazyProp = AStruct(prop: 3)//Lazy stored property
    init(val:Int) {                     //Designated initializer
        self.prop = val
    }
    convenience init() {                //Convenience initializer
        self.init(val: 0)
    }
    func bFunc() {
        //Do something
    }
}
var aObject = AClass(val: 3)
aObject.prop
aObject.bFunc()

class ASubClass:AClass,AProtocol {      //Subclass Class, implement protocol
    func aFunc() {
        //Do something
    }
    override func bFunc() {             //Override method
        //Do something
    }
}
