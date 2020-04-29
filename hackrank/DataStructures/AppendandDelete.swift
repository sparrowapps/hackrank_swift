//
//  AppendandDelete.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/10.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation
// time out
func appendAndDelete(s: String, t: String, k: Int) -> String {
    var idx = 0
    var sa = Array(s)
    var ta = Array(t)
    var op = k
    while op > 0 {
        
        if idx >= ta.count && idx < sa.count {
            sa.remove(at: idx)
            op = op - 1
        }
        
        if idx >= sa.count && idx < ta.count {
            sa.insert(ta[idx], at: idx)
        }
        if idx < sa.count && idx < ta.count {
            if sa[idx] != ta[idx] {
                sa.remove(at: idx)
                sa.insert(ta[idx], at: idx)
                op = op - 2
            }
        }
        
        if idx >= sa.count && idx >= ta.count {
            idx = 0
        }
        
        
        if String(sa) == String(ta) {
            return "Yes"
        }
        idx = idx + 1
        
    }
    return "No"

}

