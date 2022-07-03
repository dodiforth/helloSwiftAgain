/*

Order Of Operations

Mathematic operations always follow a specific order.
Multiplication and division have priority over addition and subtraction,
and parentheses have priority over all four.

var x = 2
var y = 3
var z = 5

Then consider the following calculations:

x + y * z // Equals 17
( x + y ) * z // Equals 25 

In the first line above, multiplication takes precedence over addition. 
In the second line, the parentheses get to do their work first.

The remainder operator has the same precedence as multiplication and division :

y + z % x // Equals 4
( y + z ) % x // Equals 0
*/

/*

Numeric Type Conversion

As you've learned, you can't mix and match number types when performing mathematical operations.

For example, the following will produce a compiler error, because x is an Int value and y is a Double value :

let x = 3
let y = 0.1415927
let pi = x + y

To enalbe the code to finish, you can create a new Double value from x by prefixing the type you wnat to 
convert to : 

let x = 3
let y = 0.1415927
let pi = Double(x) + y

In the revised code, Double(x) creates a new Double value from the Int value x,
enabling the compiler to add it to y and assign the result to pi. 


*/