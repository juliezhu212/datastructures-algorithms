import UIKit

/*
 Rotate array to right N times.
 https://app.codility.com/programmers/lessons/2-arrays/cyclic_rotation/
 
 For example, given

     A = [3, 8, 9, 7, 6]
     K = 3
 the function should return [9, 7, 6, 3, 8]. Three rotations were made:

     [3, 8, 9, 7, 6] -> [6, 3, 8, 9, 7]
     [6, 3, 8, 9, 7] -> [7, 6, 3, 8, 9]
     [7, 6, 3, 8, 9] -> [9, 7, 6, 3, 8]

 */

func solution(A: [Int], K: Int) -> [Int] {
    guard !A.isEmpty else { return [] }
    guard K > 0 else { return A }
    
    var ans = A
    for _ in 1...K {    // O(n)
        ans = rotateRightOnce(A: ans)   // O(n)
    }
    
    print(ans)
    return ans
}

func rotateRightOnce(A: [Int]) -> [Int] {
    var ans = [Int](repeating: 0, count: A.count)

    for i in 0..<A.count - 1 {  // O(n)
        ans[i + 1] = A[i]
    }
    ans[0] = A.last!

    return ans
}

solution(A: [1, 2, 3, 4, 5], K: 6) // 5 1 2 3 4

solution(A: [1, 2, 3, 4, 5], K: 1) // 5 1 2 3 4
solution(A: [1, 2, 3, 4, 5], K: 2) // 4 5 1 2 3
solution(A: [1, 2, 3, 4, 5], K: 3) // 3 4 5 1 2

solution(A: [3, 8, 9, 7, 6], K: 3) // 9 7 6 3 8
