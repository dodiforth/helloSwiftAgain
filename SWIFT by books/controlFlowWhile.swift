import Foundation

/*
while 반복 구문도 다른 프로그래밍 언어의 while구문과 크게 다르지 않습니다.
+for-in 과 마찬가지로 continue, break 등의 제어 키워드 사용이 가능합니다.
*/

var names: [String] = ["Joker", "Jenny", "Nova", "yagom"]

while names.isEmpty == false {
	print("Goodbye \(names.removeFirst())")
	//removeFirst()는 요소를 삭제함과 동시에 반환합니다.
}

//repeat-while 구문
/*
repeat-while 반복 구문은 다른 프로그래밍 언어의 do-while 구문과 크게 다르지 않습니다.
repeat 블록의 코드를 최초1회 실행한 후, while 다음의 조건이 성립하면 블록 내부의 코드를 반복 실행합니다.
*/

var names2: [String] = ["John", "Jenny", "Joe", "Harry", "Ron"]

repeat {
	print("Goodbye \(names2.removeFirst())")
} while names2.isEmpty == false 