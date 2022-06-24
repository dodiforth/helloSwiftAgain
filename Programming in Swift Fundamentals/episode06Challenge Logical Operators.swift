/*
Episode 06 : Challenge - Logical Operators

Challenge 1

You've been provided with a constant names myAge below that's already been assigned a vlaue.
Feel free to change the value of this constant tomatch your actual age.

Use that constant to create an if-else statement to print out "Teenager" if the value of myAge is 
greater or than 13 but less than or equal to 19, and to print out "Not a teenager" if the value is
outside that range.

*/

import Foundation 

let myAge = 28

if 13 <= myAge && myAge <= 19 {
	print("Teenager")
} else {
	print("Not a teenager")
}

/*
Challenge 2

Create a constant named teenagerName, and use a ternary conditional operator to set the value
of teenagerName to your own name as a string if the value of myAge, declared above,
is greater than or equal to 13, but less than or equal to 19, and to set the value of 
teenagerName to "Not me!" if the value is outside that range.

Then print out the value of teenagerName.
*/

//My solution
// let teenagerName: String = "Dowon"
// myAge >= 13 && myAge <= 19 ? print(teenagerName) : print("Not me!")

let teenagerName = myAge >= 13 && myAge <= 19 ? "Dowon" : "Not me!"
print(teenagerName)