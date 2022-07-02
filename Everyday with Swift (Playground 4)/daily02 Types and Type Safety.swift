// Types
import Foundation 

/*
You can define your own types in Swift by creating a type definition.
Consider a simple Person type : 
*/

struct Person {
	let firstName : String
	let lastName : String
	
	func sayHello(){
		print("Hello there! My name is \(firstName) \(lastName).")
	}
}

/*
You can think about a type definition as a blueprint. A blueprint designates how to 
construct a building but isn't a building itself. However, you can create many buildings
from a single blueprint.

A type definition declares information it stores(properties) and its capabilities or 
actions(methods). In this case, a Person stores String information in two properties,
firstName and lastName, and has one action, the method sayHello(). You're probably 
unfamiliar with all the syntax above, but that's OK.
*/

/*
The example above describes how the type Person should look and perform. When you create a type
and assign it to a variable or constant, you're creating a version or instance of the type.
Thus, an instance is a value. Consider the following code:
*/

let aPerson = Person(firstName:"Jacob", lastName:"Edwards")
let anotherPerson = Person(firstName:"Candace", lastName:"Salinas")

aPerson.sayHello()
anotherPerson.sayHello()

/*
This code creates two instances of the Person type. One instance represents a Person 
named Jacob Edwards, and the other instance represents a person named Candace Salinas.

You'll learn more about defining types in a future lesson.
*/

// Type Safety 

/*
Swift is considered a type-safe language. Type-safe languages encourage or require
you to be clear about the types of values your code can work with.
For example, if part of your code expects an Int, you can't pass it a Double or a String.

When compiling your code, Swift performs type checking on all your constants and variables and flags
any mismatched types as errors. If you mismatch types, you can't run your program.
*/

let playerName = "Julian"
var playerScore = 1000
var gameOver = false

// playerScore = playerName -> Will be flagged or mismatched types, will not compile.

/*
Because type safety enforces the type a constant or variable can hold, assigning a String to a variable
that only holds an Int doesn't make sense. You'll learn how Swift figureed out the types shortly.

Type safety also applies to variables, constants, and literal values that represent data that may seem
compatible. For example, Swift recognizes Int and Double as completely different types, even though
they both represent numbers.
*/

var wholeNumber = 3
var numberWithDecimals = 17.5

//wholeNumber = numberWithDecimals -> Will be flagged for mismatched types, will not compile.

/*
In the case above, both variables are numeric types, but wholeNumber will be an Int and numberWithDecimals
will be a Double. In Swift, you can't assign a value of one type to a variable of another type.
*/

/*
When working with numbers, you may find that you need to assign a very large value to a variable or constant.
This can be difficult to read, since it hard to see how many zeros there are in 1000000000.
Fortunately, Swift allows you to put underscore in your numbers as a way of formatting for easier reading.
*/

var largeUglyNumber = 1000000000
var largePrettyNumber = 1_000_000_000


/*
There are three common cases for using type annotation.
*/

/*
1. When you create a constant or variable but haven't yet assigned it a value.

let firstName: String
...
firstName = "Layne"


2. When you create a constant or variable that could be inferred as more than one type.

let middleInitial : Character = "J"
-> "J" Would be inferred as a 'String', but we want a 'Character'

var remainingDistance: Double = 30
-> '30' would be inferred as an 'Int', but the variable should support deciaml numbers
for accuracy as the number decreases.

3. When you write your own type definition.

struct Car {
	var make: String
	var model: String
	var year: Int
}
*/