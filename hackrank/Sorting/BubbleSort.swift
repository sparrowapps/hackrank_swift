//
//  BubbleSort.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/08.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation
/*
 for (int i = 0; i < n; i++) {
     
     for (int j = 0; j < n - 1; j++) {
         // Swap adjacent elements if they are in decreasing order
         if (a[j] > a[j + 1]) {
             swap(a[j], a[j + 1]);
         }
     }
     
 }
 */


func countSwaps(a: [Int]) -> Void {
    var array = a
    var swapCount = 0
    for _ in 0..<array.count {
        for j in 0..<array.count - 1 {
            if array[j] > array[j + 1] {
                array.swapAt(j, j + 1)
                swapCount = swapCount + 1
            }
        }
    }
    print("Array is sorted in \(swapCount) swaps.")
    print("First Element: \(array.first ?? 0)")
    print("Last Element: \(array.last ?? 0)")

}
