/*
모든 설명과 코드의 저작권은 : "스위프트 프로그래밍 3판 SWIFT5 (출판사 한빛미디어)"의 지은이 야곰에게 있습니다.
*/

import Foundation

/*
프로퍼티는 클래스, 구조체 또는 열거형 등에 관련된 값을 뜻합니다. 
메서드는 특정 타입에 관련된 함수를 뜻합니다. 우리가 앞서 봤던 변수나 상수, 함수 등이 어떤 목적으로 쓰이느냐,
어디에서 쓰이느냐에 따라 용어가 조금씩 달라질 뿐입니다.

프로퍼티는 크게
저장 프로퍼티 Stored Properties
연산 프로퍼티 Computed Properties
타입 프로퍼티 Type Properties
로 나눌 수 있습니다.

더불어, 프로퍼티의 값이 변하는 것을 감시하는 프로퍼티 감시자 Property Obervers도 있습니다.
프로퍼티 감시자는 프로퍼티의 값이 변할 때 값의 변화에 따른 특정 작업을 실행합니다.
프로퍼티 감시자는 프로퍼티에 적용할 수 있으며 부모클래스로부터 상속받을 수 있습니다.
*/
//저장 프로퍼티의 선언 및 인스턴스 생성

//좌표
struct CoordinatePoint {
	var x: Int //저장 프로퍼티
	var y: Int //저장 프로퍼티
}

//구조체에는 기본적으로 저장 프로퍼티를 매개변수로 갖는 이니셜라이저가 있습니다.
let yagomPoint: CoordinatePoint = CoordinatePoint(x: 10, y: 5)

//사람의 위치 정보
class Position {
	var point: CoordinatePoint
	//저장 프로퍼티(변수) - 위치(point)는 변경될 수 있음을 뜻합니다.
	let name: String //저장 프로퍼티(상수)
	
	//프로퍼티 기본값을 지정해주지 않는다면 이니셜라이저를 따로 정의해주어야 합니다.
	init(name: String, currentPoint: CoordinatePoint){
		self.name = name
		self.currentPoint = currentPoint
	}
}

//사용자 정의 이니셜라이저를 호출해야만 합니다.
//그렇지 않으면 프로퍼티 초깃값을 할당할 수 없기 때문에 인스턴스 생성이 불가능합니다.
let yagomPosition: Position = Position(name: "yagom", currentPoint: yagomPoint)

/*
구조체는 프로퍼티에 맞는 이니셜라이저를 자동으로 제공하지만 클래스는 그렇지 않아서
클래스 인스턴스의 저장 프로퍼티를 사용하는 일은 좀 번거롭습니다.
하지만 클래스의 저장 프로퍼티에 초깃값을 지정해주면 따로 사용장 정의 이니셜라이절르 구현해줄 필요가 없습니다.
*/
