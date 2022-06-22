import Foundation

/*
Challenge1
Create a constant named myAge and set its valut to your age.

Then, create a constant named isVotingAge that uses Boolean logic to determine
if the value stored in myAge denotes someone of voting age.

*/

let myAge: Int = 29
let isVotingAge = myAge >= 19
print(isVotingAge)

/*
Challenge2
Create a constant named student and set its value to your name as a string,.

Next, creat a constant named author and set its value to "Matt Galloway",
the original author of these exercises.

Then, create a third constant named authorIsStudent that uses string equality to determine 
if the values of student and author are equal.

*/

let student = "Dowon Kim"
let author = "Matt Galloway"
let authorIsStudent = (student==author)
print(authorIsStudent)

/*
Challenge3
Create a constant named studentBeforeAuthor which uses string comparison to determine if the
string value in the constant student comes, alphabetically speaking, before the string value
in the constant author.

The constants student and an author were declared above in Challenge2, so you do not need
to redeclare them here.

*/

let studentBeforeAuthor = (student < author)
print(studentBeforeAuthor)