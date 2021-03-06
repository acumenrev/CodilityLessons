//
//  OddOccurrencesInArray.swift
//  CodilityLessons
//
//  Created by Tri Vo on 7/9/16.
//  Copyright © 2016 acumenvn. All rights reserved.
//



import UIKit

/**
 
 Task description
 A non-empty zero-indexed array A consisting of N integers is given. The array contains an odd number of elements, and each element of the array can be paired with another element that has the same value, except for one element that is left unpaired.
 
 For example, in array A such that:
 
 A[0] = 9  A[1] = 3  A[2] = 9
 A[3] = 3  A[4] = 9  A[5] = 7
 A[6] = 9
 the elements at indexes 0 and 2 have value 9,
 the elements at indexes 1 and 3 have value 3,
 the elements at indexes 4 and 6 have value 9,
 the element at index 5 has value 7 and is unpaired.
 Write a function:
 
 public func solution(inout A : [Int]) -> Int
 that, given an array A consisting of N integers fulfilling the above conditions, returns the value of the unpaired element.
 
 For example, given array A such that:
 
 A[0] = 9  A[1] = 3  A[2] = 9
 A[3] = 3  A[4] = 9  A[5] = 7
 A[6] = 9
 the function should return 7, as explained in the example above.
 
 Assume that:
 
 N is an odd integer within the range [1..1,000,000];
 each element of array A is an integer within the range [1..1,000,000,000];
 all but one of the values in A occur an even number of times.
 Complexity:
 
 expected worst-case time complexity is O(N);
 expected worst-case space complexity is O(1), beyond input storage (not counting the storage required for input arguments).
 Elements of input arrays can be modified.
 */

class OddOccurrencesInArray: NSObject {
    
    func solution(inout A : [Int]) -> Int {
        // write your code in Swift 2.2 (Linux)
        if (A.count == 0) {
            return 0
        } else if (A.count == 1) {
            return A[0]
        }
        var result = 0
        var pairedElements : [Int] = []
        for i in 0...(A.count - 1) {
            if (result > 0) {
                break
            }
            
            var existed : Bool = false
            
            if (pairedElements.count > 0) {
                for j in 0...(pairedElements.count-1) {
                    if (pairedElements[j] == A[i]) {
                        existed = true
                    }
                }
            }
            
            
            if (existed == true ) {
                continue
            }
            
            for j in (i+1)...(A.count - 1) {
                
                if (A[i] == A[j]) {
                    pairedElements.append(A[i])
                    
                    break
                } else if (j == A.count-1 && A[i] != A[j]) {
                    result = A[i]
                    break
                }
            }
        }
        
        
        return result
    }
}
