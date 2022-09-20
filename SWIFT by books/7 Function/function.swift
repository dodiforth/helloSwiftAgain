/*
모든 설명과 코드의 저작권은 : "스위프트 프로그래밍 3판 SWIFT5 (출판사 한빛미디어)"의 지은이 야곰에게 있습니다.
*/

import Foundation

/*
스위프트의 함수는 자유도가 굉장히 높은 문법 중 하나입니다. 기본으로 함수의 이름과 매개변수(parameter), 반환타입(Return Type)등을 사용하여 함수를 정의합니다.

func 함수 이름(매개변수...) -> 반환타입 {
	실행구문
	return 반환 값
}
*/

func hello(name: String) -> String {
	return "Hello \(name)!"
}

let helloJenny: String = hello(name: "Jenny")
print(helloJenny)

func introduce(name: String) -> String {
	//[return "제 이름은 " + name + "입니다"]와 같은 동작을 합니다.
	"제 이름은 " + name + "입니다"
}

let introduceJenny: String = introduce(name: "Jenny")
print(introduceJenny) //제 이름은 Jenny입니다.

//매개변수가 없는 함수 정의와 사용
func helloWorld() -> String {
	return "Hello, world!"
}
print(helloWorld())

/*
매개변수가 여러개 필요한 함수를 정의할 때는 쉼표(,)로 매개변수를 구분합니다.
주의할 점은 함수를 호출할 때, 매개변수 이름을 붙여주고 콜론(:)을 적어준 후 전달인자를 보내준다는 점입니다.
이렇게 호출 시에 매개변수에 붙이는 이름을 매개변수 이름 Parameter Name 이라고 합니다.
*/
// 매개변수가 여러개인 함수의 정의와 사용

func sayHello(myName: String, yourName: String) -> String {
	return "Hello \(yourName)! I'm \(myName)"
}
print(sayHello(myName: "yagom", yourName: "Jenny")) //Hello Jenny! I'm yagom

//매개변수 이름과 전달인자 레이블
/*
sayHello(myName: String, yourName: String) 함수를 호출할 때 myName과 yourName이라는
매개변수 Parameter Name을 사용했습니다. 매개변수 이름과 더불어 전달인자 레이블Argument Label을 지정해줄 수 있습니다.

보통 함수를 정의할때 매개변수를 정의하면 매개변수 이름과 전달인자 레이블을 같은 이름으로 사용할 수 있지만
전달인자 레이블을 별도로 지정하면 함수 외부에서 매개변수의 역할을 좀 더 명확히 할 수 있습니다.
전달인자 레이블을 사용하려면 함수정의에서 매개변수 이름 앞에 한 칸을 띄운 후 전달인자 레이블을 지정합니다.

매개변수 이름과 전달인자 레이블을 지정할 때는 다음처럼 표현합니다.
func 함수이름(전달인자 레이블 매개변수 이름: 매개변수 타입, 전달인자 레이블 매개변수 이름: 매개변수 타입...) -> 반환 타입 {
	실행구문
	return 반환 값
}
*/

//매개변수 이름과 전달인자 레이블을 가지는 함수 정의와 사용

//from과 to라는 전달인자 레이블이 있으며
//myName과 name이라는 매개변수 이름이 있는 sayHello함수
func sayHello2(from myName:String, to name:String) -> String {
	return "Hello \(name) ~ I'm \(myName)"
}
print(sayHello2(from: "yagom", to: "Jenny")) //Hello Jenny ~ I'm yagom

//전달인자 레이블을 사용하고 싶지 않다면 와일드카드 식별자를 사용하세요.
//전달인자 레이블이 없는 함수 정의와 사용
func sayHello3(_ name: String, _ times: Int) -> String {
	var result: String = ""
	
	for _ in 0..<times {
		result += "Hello\(name)!"+" "
	}
	
	return result
}

print(sayHello3("Chope",2)) //HelloChope! HelloChope!

//전달인자 레이블 변경을 통한 함수 중복 정의 -> 전달인자 레이블을 변경하면 함수의 이름 자체가 변경됩니다.
//그렇기 때문에 전달인자 레이블만 다르게 써주더라도 함수 중복 정의(오버로드)로 동작할 수 있습니다.

func sayHello4(to name: String, _ times: Int) -> String {
	var result: String = ""
	
	for _ in 0..<times {
		result += "Hello\(name)!"+" "
	}
	
	return result
}

func sayHello4(to name: String, repeatCount times: Int) -> String {
	var result: String = ""
	
	for _ in 0..<times {
		result += "Hello \(name)!"+" "
	}
	
	return result
}

print(sayHello4(to: "Simon", 3))
print(sayHello4(to: "Simon", repeatCount: 3))

/*
매개변수 기본값
스위프트의 함수에서는 매개변수마다 기본값을 지정할 수 있습니다.
즉, 매개변수가 전달되지 않으면 기본값을 사용합니다. 매개변수 기본값이 있는 함수는 함수를 중복 정의한 것처럼 사용할 수 있습니다.
예) 아래 코드
*/
//매개변수가 기본값 3을 갖습니다.

func sayHello5(_ name: String, times: Int = 3) -> String {
	var result: String = ""
	
	for _ in 0..<times {
		result += "Hello \(name)!"+" "
	}
	
	return result
}

//times 매개변수의 전달 값을 넘겨주지 않아 기본값 3을 반영해서 세 번 출력합니다.
print(sayHello5("Hana")) //Hello Hana! Hello Hana! Hello Hana!

//times 매개변수의 전달 값을 2로 넘겨주었기 때문에 전달 값을 반영해서 두 번 출력합니다.
print(sayHello5("Joe", times:2)) // Hello Joe! Hello Joe!


/*
가변 매개변수와 입출력 매개변수
매개변수로 몇 개의 값이 들어올지 모를때, 가변 매개변수를 사용할 수 있습니다. 
가변 매개변수는 0개 이상(0개 포함)의 값을 받아올 수 있으며, 가변 매개변수로 들어온 인자 값은 배열처럼 사용할 수 있습니다.
함수마다 가변 매개변수는 하나만 가질 수 있습니다.
*/

//가변 매개변수를 가지는 함수의 정의와 사용 

func sayHelloToFriends(me: String, friends names: String...) -> String {
	var result: String = ""
	
	for friend in names {
		result += "Hello \(friend)!" + " "
	}
	
	result += "I'm " + me + "!"
	return result 
}

print(sayHelloToFriends(me: "yagom", friends: "Johansson", "Jay", "Wizplan"))
// Hello Johansson! Hello Jay! Hello Wizplan! I'm yagom!

print(sayHelloToFriends(me: "yagom"))
// I'm yagom!

/*
In Swift, inout parameters allow you to change an input passed into a function 
*/
//inout 매개변수의 활용

var numbers: [Int] = [1,2,3]

func nonReferenceParameter(_ arr: [Int]) {
	var copiedArr: [Int] = arr
	copiedArr[1] = 1
}

func referenceParameter(_ arr: inout[Int]) {
	arr[1] = 1
}

nonReferenceParameter(numbers)
print(numbers[1]) //2

referenceParameter(&numbers) //참조를 표현하기 위해 &를 붙여줍니다.
print(numbers[1]) //1

/*
입출력 매개변수는 매개변수 기본값을 가질 수 없으며, 가변 매개변수로 사용될 수 없습니다.
또한 상수는 변경될 수 없으므로 입출력 매개변수의 전달인자로 사용될 수 없습니다.

입출력 매개변수는 잘 사용하면 문제 없지만 잘못 사용하면 메모리 안전 memory safety을 위협하기도 합니다. 
*/

/*
반환이 없는 함수
함수는 특정 연산을 실행한 후 결과값을 반환합니다. 그러나 값의 반환이 굳이 필요하지 않은 함수도 있습니다.
그럴 때는 반환 값이 없는 함수를 만들어 줄 수 있습니다.
만약 반환 값이 없는 함수라면 반환 타입을 '없음'을 의미하는 Void로 표기하거나 아예 반환타입 표현을 생략하셔도 되니다.
즉, 반환 타입이 Void 이거나 생략되어 있다면 반환 값이 없는 함수입니다.
*/
//반환 값이 없는 함수의 정의와 사용
func sayHelloWorld(){
	print("Hello, World!")
}
sayHelloWorld() // Hello, world!

func sayHello6(from myName: String, to name: String){
	print("Hello \(name)! I'm \(myName)")
}
sayHello6(from: "yagom", to: "Mijeong") //Hello Mijeong! I'm yagom

func sayGoodbye() -> Void { //Void를 명시해주어도 상관없습니다.
	print("Good bye")
}
sayGoodbye() //Good bye

//종료되지 않는 함수
/*
스위프트에는 종료(return)되지 않는 함수가 있습니다. 종료되지 않는다는 의미는 정상적으로 끝나지 않는 함수라는 뜻입니다.
이를 비반환 함수 Nonreturning function또는 비반환 메서드 Nonreturning method라고 합니다.
비반환 함수(메서드)는 정상적으로 끝날수 없는 함수입니다. 이 함수를 실행하면 프로세스 동작은 끝났다고 볼 수 있습니다.
오류를 보고하는 등의 일을 하고 프로세스를 종료해 버리기 때문입니다.
비반환 함수는 어디서든 호출이 가능하고 guard구문의 else블록에서도 호출할 수 있습니다. 비반환 메서드는
재정의 할 수 있지만 비반환 타입이라는 것은 변경할 수 없습니다.

비반환 함수(메서드)는 반환 타입을 Never라고 명시해주면 됩니다.
*/
//비반환 함수의 정의와 사용
func crashAndBurn() -> Never {
	fatalError("Something very, very bad happened")
}

crashAndBurn() //프로세스 종료 후 오류 보고

func someFunction(isAllIsWell: Bool) {
	guard isAllIsWell else {
		print("마을에 도둑이 들었습니다!")
		crashAndBurn()
	}
	print("All is well")
}

someFunction(isAllIsWell: true) // All is well
someFunction(isAllIsWell: false) // 마을에 도둑이 들었습니다!
//프로세스 종료 후 오류 보고