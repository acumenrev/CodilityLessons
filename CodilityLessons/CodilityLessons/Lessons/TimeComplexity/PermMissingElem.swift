//
//  PermMissingElem.swift
//  CodilityLessons
//
//  Created by Tri Vo on 7/9/16.
//  Copyright © 2016 acumenvn. All rights reserved.
//

import UIKit
import Foundation

/**
 
 A zero-indexed array A consisting of N different integers is given. The array contains integers in the range [1..(N + 1)], which means that exactly one element is missing.
 
 Your goal is to find that missing element.
 
 Write a function:
 
 public func solution(inout A : [Int]) -> Int
 
 that, given a zero-indexed array A, returns the value of the missing element.
 
 For example, given array A such that:
 
 A[0] = 2
 A[1] = 3
 A[2] = 1
 A[3] = 5
 the function should return 4, as it is the missing element.
 
 Assume that:
 
 N is an integer within the range [0..100,000];
 the elements of A are all distinct;
 each element of array A is an integer within the range [1..(N + 1)].
 Complexity:
 
 expected worst-case time complexity is O(N);
 expected worst-case space complexity is O(1), beyond input storage (not counting the storage required for input arguments).
 Elements of input arrays can be modified.
 
 */

class PermMissingElem: NSObject {
    func solution(inout A : [Int]) -> Int {
        // write your code in Swift 2.2 (Linux)
        if (A.count <= 1) {
            return 0
        }
        var missingNumber = 0
        var j = A[0]
        var g = (0...(A.count-1)).generate()
        
        while var i = g.next() {
            // use i
            if j == A[i] {
                j+=1
                continue
            } else {
                i-=1
                missingNumber = j
                j+=1
            }
        }
        
        return missingNumber
    }
}
