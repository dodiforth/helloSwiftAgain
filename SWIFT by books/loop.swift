import Foundation

/*
전통적인 C 스타일의 for 구문이 사라짐. 또한 do-while 구문은 스위프트에서 repeat-while 구문으로 구현되어 있다.
*/

/*
```
for-in 반복 구문은 반복적인 데이터나 시퀀스를 다룰 때 많이 사용합니다.
```
*/
for i in 0...2 {
	print(i)
}

for i in 0...5 {
	if i.isMultiple(of:2){
		print(i)
		continue
	}
	print("\(i) == 홀수")
}

let helloSwift: String = "Hello Swift!"
for char in helloSwift {
	print(char)
}

var result: Int = 1
//시퀀스에 해당하는 값이 필요 없다면 와일드카드 식별자(_)를 사용하면 됩니다.
for _ in 1...3 {
	result *= 10
}

print("10의 3제곱은 \(result)입니다.")

/*
for-in 구문은 스위프트의 기본 컬렉션 타입에서도 유용하게 사용할 수 있습니다. 딕셔너리는 넘겨받는 값의 타입이 튜플로 지정되어 넘어옵니다.
*/

//cod6-16 기본데이터 타입의 for-in 반복 구문 사용

//Dictionary
let friends: [String:Int] = ["Jay":35, "Joe":29, "Jenny":31]

for tuple in friends {
	print(tuple)
}

let 주소: [String:String] = ["도":"충청북도", "시군구":"청주시 청원구", "동읍면":"율량동"]

for (키, 값) in 주소 {
	print("\(키) : \(값)")
}

//Set
let 지역번호: Set<String> = ["02", "031", "032", "033", "041", "042", "043", "051", "052", "053", "054", "055", "061", "062", "063", "064"]
for 번호 in 지역번호 {
	print(번호)
}

/*
for-in 구문을 사용하여 반복처리를 쉽게 할 수 있습니다. 하지만 스위프트에 좀 더 익숙해져서 옵셔널, 클로저 등을 배우고, 함수형 프로그래밍 패러다임을 이해하면 for-in 구문보다
map, filter, flatMap 등을 더 많이 사용하게 될 겁니다.
*/