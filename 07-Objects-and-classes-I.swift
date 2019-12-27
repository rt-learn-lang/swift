// 1. Class declaration.
class NamedShape {

    // 2. Class property
    var numberOfSides = 0
    let PI = 3.1415
    var name: String

    // 3. Constructor
    init(name: String) {
        self.name = name
    }

    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides"
    }

    func getName() -> String {
        return self.name
    }

    // 5. Deinitializer
    deinit {
        print("5. Class deinitialized")
    }
}

// 4. Class instantiation.
var shape = NamedShape(name: "Learn")
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()
print("1. Classes and objects: \(shapeDescription), with name: \(shape.getName())")
print(shape.PI)

// 6. Inheriting from a base class
class Square: NamedShape {
    var sideLength: Double

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }

    func area() -> Double {
        return sideLength * sideLength
    }

    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let square2 = Square(sideLength: 5.2, name: "my test square")
print(square2.area())
print(square2.simpleDescription())

class Circle: NamedShape {

    var radius: Double

    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
    }
    func area() -> Double {
        return Double.pi * self.radius
    }
}

let circle = Circle(radius: 5, name: "Circlet")
print(circle)




