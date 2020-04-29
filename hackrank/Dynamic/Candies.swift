//
//  Candies.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/02.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation
func candies(n: Int, arr: [Int]) -> Int {

    var resArray = [Int](repeating: 0, count: arr.count)
    resArray[0] = 1
    print(arr)
    // ---> 더큰게 나오면 1, 2, 3
    for i in 1..<arr.count {
        resArray[i] = arr[i] > arr[i-1] ? resArray[i-1] + 1 : 1
    }
    print(resArray)
    // <---- 기존 값 + 1
    for i in stride(from: arr.count - 2, to: 0, by: -1) {
//        resArray[i] = arr[i] > arr[i + 1]  ? resArray[i + 1] + 1 : resArray[i]
        if arr[i] > arr[i + 1] && resArray[i] <= resArray[i+1]  {
            resArray[i] = resArray[i+1] + 1
        } else {
                //
        }
    }

    print(resArray)
    return  resArray.reduce(0) { $0 + $1 }
}
