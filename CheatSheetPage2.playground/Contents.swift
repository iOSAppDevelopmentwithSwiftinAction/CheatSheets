import UIKit
//: ## Functions
func aFunc() {
    //do something
}
//: ### Function returns value
func bFunc()->String {
    //do something
    return ""
}
//: ### Function with parameters
func multiply(a:Int, b:Int)->Int {
    return a*b
}
multiply(a: 1, b: 2)
//: ### Function with parameters without argument labels
func add(_ a:Int, _ b:Int)->Int {
    return a+b
}
add(1, 2)
//: ### Argument label different to parameter name
func subtract(_ a:Int, from b:Int)->Int {
    return b-a
}
subtract(3, from: 5)
//: ### Default Parameter Values
func greet(with planet:String = "World") {
    print("Hello \(planet)")
}
greet()             //Hello World
greet(with: "Mars") //Hello Mars
//: ### Variadic parameters
func add(_ numbers:Int...)->Int {
    return numbers.reduce(0,{$0 + $1})
}
add(3,2,5) //10
//: ### Overloading functions
func display(text:String) {
    print(text)
}
func display(num:Int) {
    print(num)
}
//: ### Overloading operators
func +(left: Int, right:Int) -> Int {
    return left-right
}
print(3+2) //1! - crazy right?

//: ## Closures
//: ### Method receives closure
func use(num:Int, with calc:(Int)->Int) {
    calc(num)
}
//: ### Pass closure to method
use(num: 10, with:
    { (num:Int)->Int in
        return(num * 2)
}
)
//: ### Shorthand closure
use(num:5, with:{ $0 * 2 })
//: ### Trailing Closure
use(num:6) { $0 * 2}
//: ## Optionals
var w:Int?
var h:Int?
(w,h) = (5,10)
//: ### Forced Unwrapping
print("Rect area is \(w! * h!)")
//: ### Optional Binding
if let w = w, let h = h {
    print("Rect area is \(w * h)")
}
//: ### Optional parameter, Guard let
func getSquareArea(w:Int? = nil)->Int {
    guard let w = w, w > 0 else
    {
        return(0)
    }
    return(w * w)
}
//: ### Ternary conditional operator
print("Width is \(w != nil ? w! : 0)")
//: ### Nil coalescing operator
print("Width is \(w ?? 0)")
//: ### Implicitly unwrapped optionals
var width2:Int!
//: ### Optional chaining
//: ### With a two-dimensional array:
var pos = [["O","X","O"],
           ["X","X","O"],
           ["X","O","X"]
]
//: ### With optional chaining:
if let firstPos = pos.first?.first {
    print("Top left is a \(firstPos)")
}
