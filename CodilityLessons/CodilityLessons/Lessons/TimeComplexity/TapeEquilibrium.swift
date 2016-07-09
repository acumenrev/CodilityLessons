//
//  TapeEquilibrium.swift
//  CodilityLessons
//
//  Created by Tri Vo on 7/9/16.
//  Copyright © 2016 acumenvn. All rights reserved.
//

import UIKit
import Foundation
/**
 A non-empty zero-indexed array A consisting of N integers is given. Array A represents numbers on a tape.
 
 Any integer P, such that 0 < P < N, splits this tape into two non-empty parts: A[0], A[1], ..., A[P − 1] and A[P], A[P + 1], ..., A[N − 1].
 
 The difference between the two parts is the value of: |(A[0] + A[1] + ... + A[P − 1]) − (A[P] + A[P + 1] + ... + A[N − 1])|
 
 In other words, it is the absolute difference between the sum of the first part and the sum of the second part.
 
 For example, consider array A such that:
 
 A[0] = 3
 A[1] = 1
 A[2] = 2
 A[3] = 4
 A[4] = 3
 We can split this tape in four places:
 
 P = 1, difference = |3 − 10| = 7
 P = 2, difference = |4 − 9| = 5
 P = 3, difference = |6 − 7| = 1
 P = 4, difference = |10 − 3| = 7
 Write a function:
 
 public func solution(inout A : [Int]) -> Int
 
 that, given a non-empty zero-indexed array A of N integers, returns the minimal difference that can be achieved.
 
 For example, given:
 
 A[0] = 3
 A[1] = 1
 A[2] = 2
 A[3] = 4
 A[4] = 3
 the function should return 1, as explained above.
 
 Assume that:
 
 N is an integer within the range [2..100,000];
 each element of array A is an integer within the range [−1,000..1,000].
 Complexity:
 
 expected worst-case time complexity is O(N);
 expected worst-case space complexity is O(N), beyond input storage (not counting the storage required for input arguments).
 Elements of input arrays can be modified.
 */

class TapeEquilibrium: NSObject {
    static func solution(inout A : [Int]) -> Int {
        
        // write your code in Swift 2.2 (Linux)
        if (A.count == 0) {
            return 0
        }
        
        if (A.count == 1) {
            return A[0]
        }
        
        var minResult = -1
        
        for i in 0...(A.count - 2) {
            let p = i + 1
            
            let sumFirstPart = sum(Array(A[0...(p-1)]))
            let sumSecondPart = sum(Array(A[(p...(A.count-1))]))
            
            var tempMinResult = sumFirstPart - sumSecondPart
            
            
            if tempMinResult < 0 {
                tempMinResult = -tempMinResult
            }
            
            if (tempMinResult < minResult) || (minResult < 0) {
                minResult = tempMinResult
            }
        }
        
        return minResult
    }
    
    func sum(A: [Int]) -> Int {
        if (A.count == 0) {
            return 0
        }
        
        if (A.count == 1) {
            return A[0]
        }
        
        
        var sum = 0
        for index in 0...(A.count - 1) {
            sum += A[index]
        }
        
        return sum
    }
}
