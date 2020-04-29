//
//  BeautifulDays.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/10.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

func beautifulDays(i: Int, j: Int, k: Int) -> Int {
    var count = 0
    

    for et in i...j {
        //var r = Int(String(String(et).reversed()))
        var num = et
        var r = 0
        
        //숫자 리버스 reverse
        while num != 0 {
            let quo = num % 10
            r = 10 * r + quo
            num = num / 10
        }

        if abs(et - r) == 0 {
            count = count + 1
        } else if abs(et - r) % k == 0 {
            count = count + 1
        } else if abs(et - r) < k {
            continue
        }

    }
    return count
}
