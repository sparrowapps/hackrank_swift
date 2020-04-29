//
//  InsertNodeAtPosition.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/07.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

class SinglyLinkedListNode {
    var data: Int = 0
    var next: SinglyLinkedListNode?
    init (nodeData: Int) {
        self.data = nodeData
    }
}

func insertNodeAtPosition(llist: SinglyLinkedListNode?, data: Int, position: Int) -> SinglyLinkedListNode? {

    let newNode = SinglyLinkedListNode(nodeData: data)
    
    if position == 0 {
        newNode.next = llist
        return llist
    } else {
        var node = llist?.next
        for _ in 1..<position - 1 {
            node = node?.next
            if node == nil {
                break
            }
        }
        newNode.next = node?.next
        node?.next = newNode
        return llist
    }
}
