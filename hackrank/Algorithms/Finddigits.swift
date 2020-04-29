//
//  Finddigits.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/10.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

func findDigits(n: Int) -> Int {
    var count = 0
    var num = n
    while num != 0 {
        let quo = num % 10
        num = num / 10
        if quo != 0 {
            if n % quo == 0 {
                count = count + 1
            }
        }
    }
    return count

}

//print(findDigits(n: 110110015))
//6
