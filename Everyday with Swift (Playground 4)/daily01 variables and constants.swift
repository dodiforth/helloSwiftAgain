import Foundation

print("I have learned the following : ")
print("What features make Swift a modern and safe language")
print("How to use the Swift REPL in Terminal")
print("How to use playgrounds to make writing Swift fun ans simple")

// Constants, Variables, and Data Types

let friends: Int = 100
print(friends)

let goalSteps = 10000
print("Your step goal for the day is : \(goalSteps)")

/*
Conatant or Variable ?

You just learned to use a constant when the value won't change and a variable
when the value might change.

But there's a nuance here that's worth learning. Even though certain values
might be variable, you can represent them with a conatant because they won't change
during the lifetime of a single execution of the code.

Imagine you're calculating information about the distance traveled on a trip.
The program can be reused to track many trips over time, but it tracks one trip 
at a time. How would you represent the following data in your code ?

-Starting locaton : This is a GPS coordinate of where you started your trip.
Once you begin tracking a trip in your program, the location won't change. You'll
represent this value with a constant

-Destination : This GPS coordinate is where you want to arrive. Your app can be used 
for many destinatons, so you may think this would be represented with a variable.
But once your program begins tracking a trip, the destinaton won't change.
You'll represent this value with a constant

-Current location : The GPS coordinate of your current location will change
whenever you move. So you'll represent this value with a variable.

-Distance traveled : How far have you traveled from your starting point? This value changes
as you move. You'll represent it with another variable.

-Remaining distance : How far must you travel to arrive at your destination?
The remaining distance changes as you move. You'll represent this value with a variable.

Conatant and variables perform very similar jobs. You may think it would be easier to
use variables for everything and ignore constants altogether. Technically your code
could work this way. So why should you use constants at all?

First, if you set a value to a constant, the compiler understand that it should never be
changed. This means you won't be able to build or run your program if you try to changed
the constant's value. In this way, the compiler enforces safety.

Second, there are special optimizations that the compiler can make for contant values.
When you use constants for values that won't change, the compiler can make low-level
assumptions about how to store the value. These adjustments allow your program to execute
faster.

Third,  it's the idiomatic, or accepted, way to do things in Swift.
*/

// Exercise - Constant or Variable ?

//Number of likes
var numberOfLikes = 0

//Number of comments 
var numberOfComments = 0

//Year created 
let yearCreatedOfPost = 1994

//Month created
let monthCreatedOfPost = 5

//Day created
let dayCreatedOfPost = 22