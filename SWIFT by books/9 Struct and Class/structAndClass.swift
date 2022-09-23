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

friendInfo.age = 999

print("yagom's age: \(yagomInfo.age)") //100 - yagom의 값은 변동 없습니다.
print("friend's age: \(friendInfo.age)") //999 - friendInfo는 yagomInfo의 값을 복사해왔기 때문에 별개의 값을 갖습니다.


class Person {
	var height: Float = 0.0
	var weight: Float = 0.0
}

var yagom: Person = Person()
var friend: Person = yagom //yaom의 참조를 할당합니다.

print("yagom's height: \(yagom.height)") //0.0
print("friend's height: \(friend.height)") //0.0

friend.height = 185.5

print("yagom's height: \(yagom.height)") // 185.5 - friend는 yagom을 참조하기 때문에 값이 변동됩니다.
print("friend's height: \(friend.height)") //185.5 -  이를 통해 yagom이 참조하는 곳과 friend가 참조하는 곳이 같음을 알 수 있습니다.

func changeBasicInfo(_ info: BasicInformation) {
	var copiedInfo: BasicInformation = info
	copiedInfo.age = 1
}
func changePersonInfo(_ info: Person) {
	info.height = 155.3
}

//changeBasicInfo(_:)로 전달되는 전달인자는 값이 복사되어 전달되기 때문에
//yagomInfo의 값만 전달되는 것입니다.
changeBasicInfo(yagomInfo)
print("yagom's age: \(yagomInfo.age)") //100

//changePersonInfo(_:)의 전달인자로 yagom의 참조가 전달되었기 때문에
//yagom이 참조하는 값들에 변화가 생깁니다.
changePersonInfo(yagom)
print("yagom's height: \(yagom.height)") //155.3

/*
값 타입의 데이터를 함수의 전달인자로 전달하면 메모리에 전달인자를 위한 인스턴스가 새로 생성됩니다.
생성된 새 인스턴스에는 전달하려는 값이 복사되어 들어갑니다. 반면 참조 타입의 데이터는 전달인자로 전달할 때 
기존 인스턴스의 참조를 전달하므로 새로운 인스턴스가 아닌 기존의 인스턴스 참조를 전달합니다.
함수의 전달인자 뿐만 아니라 새로운 변수에 할당 될 때 또한 마찬가지입니다.

클래스의 인스턴스끼리 참조가 같은지 확인할 때는 식별 연산자 Identity Operators를 사용합니다
아래 코드는 식별 연산자를 사용하여 두 참조가 같은 인스턴스를 가리키고 있는지 비교해보는 코드입니다.
*/

var noel: Person = Person()
let oasis: Person = noel //noel의 참조를 할당합니다.
let anotherOasis: Person = Person() //새로운 인스턴스를 생성합니다.

print(noel === oasis) //true 
print(noel === anotherOasis) //false
print(oasis !== anotherOasis) //true