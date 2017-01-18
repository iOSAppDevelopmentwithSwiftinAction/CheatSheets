import UIKit
//: ## Variables and constants
var aVariable = 0
let aConstant = 0
//: ### Data type annotations
var aString:String
var aBool:Bool
var aInt:Int
var aDouble:Double
//: ### Data type inference
var bString = "A String!"
var bBool = true
var bInt = 3
var bDouble = 3.0
//: ### Clarify data type
var cDouble:Double = 3
//: ### Convert data type
var dDouble = Double(3)
//: ### Property observers
var score = 0 {
willSet {
    //Score will be updated
}
didSet {
    //Score was updated
}
}
//: ### String interpolation
var message = "You scored \(score)"
//: ## Collections
//: ### Arrays
var emptyArray:[String] = []
var arrayOfInts = [3,1,2,5]
arrayOfInts.append(4)
//: ### Dictionaries
var emptyDictionary:[String:String] = [:]
var dict = ["A":1,"B":2,"C":3]
dict["D"] = 4
//: ### Sets
var emptySet:Set<String> = [] //empty Set
var setOfStrings:Set = ["A","B","C"]
setOfStrings.insert("D")
//: ### Range operators
let closedRange = 1...3 //include 3
let halfOpenRange = 1..<3 //exclude 3
//: ### For-in loops with range
for index in 1...3 {
    print("\(index) banana")
}
//: ### For-in loop
let distances = [3,1,2,5,4]
var returnDistances:[Int] = []
for distance in distances {
    returnDistances.append(distance*2)
}
//: ### Collection Higher Order Functions
print(distances.map( { $0 * 2 } ))
//[6,2,4,10,8]
print(distances.filter( { $0 >= 3 }))
//[3,5,4]
print(distances.reduce(0,{$0 + $1}))
//15
print(distances.sorted(by:{ $0 > $1 } ))
//[5,4,3,2,1]
//: ## Tuples
var card1:(Int,String)
card1 = (7,"♥")
card1.0 = 3
print("\(card1.0) of \(card1.1)")
//The 3 of ♥
//: ### Tuples with element names
var card2:(number:Int,suit:String)
card2 = (number:10,suit:"♠")
card2.number = 5
print("\(card2.number) of \(card2.suit)")
//The 5 of ♠
//: ### Return a tuple from a function
func pickCard()->(number:Int,suit:String){
    return (number:2,suit:"♦")
}
//: ### Define two values at once using a tuple
var (number,suit) = card1
var (number2,suit2) = (13,"♣")
//: ### Swap two values using tuples
var coin1 = "dollar"
var coin2 = "penny"
(coin1,coin2) = (coin2,coin1)
//: ## Enumerations
enum AEnum {
    case aCase
    case bCase
}
let aEnum = AEnum.bCase
//: ### Switch statement with enum
switch aEnum {
case .aCase:
    print("Do a thing")
case .bCase:
    print("Do b thing")
}
//: ## Control flow
//: ### While
var num = 1
while num < 100 {
    num += num
}
//: ### Repeat while
repeat {
    num += num
} while num < 200
