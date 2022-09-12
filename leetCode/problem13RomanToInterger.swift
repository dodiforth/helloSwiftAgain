import Foundation 

//N is an integer within the range [1..2,147,483,647].

public func solution(_ N : Int) -> Int {
	
	if 1...2147483647 ~= N {
		// convert decimal to binary ㅜ
		let str = String(N, radix:2) // str is String type !
		// convert decimal to binary ㅗ
		var emptyArray = [Int]()
		var longest = 0
		for i in str {
			if i == "0" {
				longest += 1 
			} else if i == "1" {
				emptyArray.append(longest)
				longest = 0
			}
		}
		return emptyArray.max()! //this way I can still return in Int althought str is String 		
	} else {
		return 0	
	}
}

var test = solution(1041)
print(test)