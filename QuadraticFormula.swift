var a: Double = 2.0
var b: Double = 5.0
var c: Double = 3.0

var root1: Double
var root2: Double

//For +ve root
root1 = (-b + ((b*b)-4*a*c).squareRoot())/(2*a)

//For -ve root
root2 = (-b - ((b*b)-4*a*c).squareRoot())/(2*a)

print("Root1 is \(root1)")
print("Root2 is \(root2)")