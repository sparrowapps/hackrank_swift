//
//  BalancedBrackets.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/04.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

func isBalanced(s: String) -> String {
    var myStack = Stack<String.Element>()
    
    var res = "YES"
    for e in s {
        if e == "{" || e == "[" || e == "(" {
            myStack.push(element: e)
        } else {
            if let p = myStack.pop() {
                if e == getReverse(stringElement: p) {
                    res = "YES"
                } else {
                    res = "NO"
                    break
                }
            } else {
                res = "NO"
                break
            }
        }
    }
    if myStack.isEmpty {
        return res
    } else {
        return "NO"
    }
}

func getReverse(stringElement: String.Element) -> String.Element {
    if stringElement == "{" {
        return "}"
    } else if stringElement == "[" {
        return "]"
    } else {
        return ")"
    }
}
