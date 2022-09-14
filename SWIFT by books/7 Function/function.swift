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