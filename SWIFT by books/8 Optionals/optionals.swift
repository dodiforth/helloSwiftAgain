/*
모든 설명과 코드의 저작권은 : "스위프트 프로그래밍 3판 SWIFT5 (출판사 한빛미디어)"의 지은이 야곰에게 있습니다.
*/

import Foundation

/*
옵셔널은 스위프트의 특징 중 하나인 안전성Safe을 문법으로 담보하는 기능입니다.
C언어 또는 Objective-C 에서는 찾아볼 수 없었던 콘셉트이기도 합니다.
*/

/*
옵셔널 추출
열거형의 some 케이스로 꼭꼭 숨어있는 옵셔널의 값을 옵셔널이 아닌 값으로 추출하는 옵셔널 추출 Optional Unwrapping 
방법에 대해 알아보겠습니다.
*/

//강제추출
/*
옵셔널 강제추출 Forced Unwrapping 방식은 옵셔널의 값을 추출하는 가장 간단하지만 가장 위엄한 방법입니다.
런타임 오류가 일어날 가능성이 가장 높기 때문입니다.
또, 옵셔너를 만든 의미가 무색해지는 방법이기도 합니다. 옵셔널의 값을 강제 추출하려면 옵셔널 값의 뒤에 느낌표(!)를
붙여주면 값을 강제로 추출하여 반환해줍니다. 만약 강제 추출시 옵셔널에 값이 없다면,
즉 nil 이라면 런타임 오류가 발생합니다.
*/
//옵셔널 값의 강제 추출
var myName: String? = "yagom"

//옵셔널이 아닌 변수에는 옵셔널 값이 들어갈 수 없습니다. 추출해서 할당해주어야 합니다.
var yagom: String = myName!

myName = nil
// yagom = myName! //런타임 오류! <--코멘트처리를 없애고 코드를 실행해야 런타임 오류가 남을 확인 가능

//if 구문 등 조건문을 이용해서 조금 더 안전하게 처리해볼 수 있습니다.
if myName != nil {
	print("My name is \(myName!)")
} else {
	print("myName == nil")
}

// myName == nil

/*
옵셔널 바인딩 Optional Binding
위에서 사용한 if구문을 통해 myName이 nil인지 먼저 확인하고 옵셔널 값을 강제 추출하는
방법은 다른 프로그래밍 언어에서 NULL 값을 체크하는 방식과 비슷합니다. 앞서 설명한 것처럼
옵셔널을 사용하는 의미도 사라집니다. 그래서 스위프트는 조금 더 안전하고 세련된 방법으로 옵셔널 바인딩 Optional Binding을 제공합니다.
*/
/*

*/