//
//  CycleRotations.swift
//  CodilityLessons
//
//  Created by Tri Vo on 7/9/16.
//  Copyright © 2016 acumenvn. All rights reserved.
//

import UIKit

/**
 A zero-indexed array A consisting of N integers is given. Rotation of the array means that each element is shifted right by one index, and the last element of the array is also moved to the first place.
 
 For example, the rotation of array A = [3, 8, 9, 7, 6] is [6, 3, 8, 9, 7]. The goal is to rotate array A K times; that is, each element of A will be shifted to the right by K indexes.
 
 Write a function:
 
 struct Results solution(int A[], int N, int K);
 that, given a zero-indexed array A consisting of N integers and an integer K, returns the array A rotated K times.
 
 For example, given array A = [3, 8, 9, 7, 6] and K = 3, the function should return [9, 7, 6, 3, 8].
 
 Assume that:
 
 N and K are integers within the range [0..100];
 each element of array A is an integer within the range [−1,000..1,000].
 In your solution, focus on correctness. The performance of your solution will not be the focus of the assessment.
 */

class CycleRotations: NSObject {
    
    
    func solution(inout A : [Int], _ K : Int) -> [Int] {
        // write your code in Swift 2.2 (Linux)
        if A.count == 0 || K == 0 {
            return A
        }
        var step = K
        
        while( step > 0) {
            
            var resultArray : [Int] = []
            for index in 0 ... (A.count - 1) {
                var value : Int
                print("currentIndex: " + String(index))
                if ( index == 0) {
                    value = A[A.count - 1]
                } else {
                    value = A[index - 1]
                }
                
                resultArray.append(value)
            }
            A = resultArray
            step -= 1
        }
        
        return A
    }
}
