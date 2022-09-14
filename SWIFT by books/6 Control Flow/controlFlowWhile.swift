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

//구문 이름표 
/*
반복문 작성시 종종 반복문을 중첩으로 작성하게됨. 이때 반복문을 제어하는 키워드 break, continue 등이 있음.
근데 어떤 범위에 적용되어야 하는지 애매하거나 큰 범위의 반복문을 종료하고 싶은데 작은 범위의 반복문만 종료되는 등
예상치 못한 실수를 할 수도 있다.
그럴 때는 반복문 앞에 이름과 함께 콜론을 붙여 구문의 이름을 지정해주는 구문 이름표를 사용하면 좋다.
이름이 지정된 구문을 제어하고자 할 때는 제어 키워드와 구문 이름을 함께 써주면 된다.
*/

// 중첩된 반복문의 구문 이름표  사용
var numbers: [Int] = [3, 2432, 6, 3253]

numbersLoop: for num in numbers {
	if num > 5 || num < 1 {
		continue numbersLoop
	}
	
	var count: Int = 0
	
	printLoop: while true {
		print(num)
		count += 1
		
		if count == num {
			break printLoop
		}
	}
	
	removeLoop: while true {
		if numbers.first != num {
			break numbersLoop
		}
		numbers.removeFirst()
	}
}
//3
//3
//3
// numbers에는 [2342, 6, 3252]가 남습니다.
