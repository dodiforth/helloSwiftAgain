/*
모든 설명과 코드의 저작권은 : "스위프트 프로그래밍 3판 SWIFT5 (출판사 한빛미디어)"의 지은이 야곰에게 있습니다.
*/

import Foundation

//값 타입과 참조 타입
/*
구조체는 값 타입이고 클래스는 참조 타입입니다. 값타입과 참조 타이의 가장 큰 차이는 
'무엇이 전달되느냐'입니다. 예를 들어 어떤 함수의 전달인자로 값 타입의 값을 넘긴다면 
전달될 값이 복사되어 전달됩니다.
그러나 참조 타입이 전달인자로 전달될 때는 값을 복사하지 않고 참조(주소)가 전달 됩니다.
참조라는 것은 C, C++, Objective-C 등의 언어에서 사용되는 포인터Pointer와 매우 유사한 개념입니다.
그러나 참조라는 것을 표현해주기 위하여 애스터리스크(*)르 사용하지는 않습니다.
함수의 전달인자로 넘길 때도 참조가 전달되며 다른 변수 또는 상수에 할당될 때도 마찬가지로 참조가 할당됩니다.
아래 코드로 살펴 보겠습니다
*/

struct BasicInformation {
	let name: String
	var age: Int 
}

var yagomInfo: BasicInformation = BasicInformation(name:"yagom", age: 99)

print(yagomInfo)
yagomInfo.age = 100

//yagomInfo의 값을 복사하여 할당합니다!
var friendInfo: BasicInformation = yagomInfo

print(friendInfo)

print("yagom's age:  \(yagomInfo.age)") //100
print("friend's age: \(friendInfo.age)") //100