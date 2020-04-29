//
//  MarkandToys.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/08.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

func maximumToys(prices: [Int], k: Int) -> Int {
    
    let priceArray = prices.sorted()
    var sum = 0
    var ans = 0
    for p in priceArray {
        sum = sum + p
        if sum > k {
            break
        }
        ans = ans + 1
    }
    return ans
}

//print(maximumToys(prices: [1, 12, 5, 111, 200, 1000, 10], k: 50))
