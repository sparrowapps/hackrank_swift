//
//  InsertingNodeSortedDoublyLinkedList.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/07.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation
/*
class DoublyLinkedListNode {
    var data: Int = 0
    var next: DoublyLinkedListNode?
    var prev: DoublyLinkedListNode?
    init(nodeData: Int ){
        self.data = nodeData
    }
}

func sortedInsert(llist: DoublyLinkedListNode?, data: Int) -> DoublyLinkedListNode? {
    
    let newNode = DoublyLinkedListNode(nodeData: data)
    
    var headNode = llist
    
    //first
    if data < headNode!.data {
        newNode.prev = nil
        newNode.next = headNode
        headNode?.prev = newNode
        return newNode
    }
    
    while headNode?.next != nil {
        if data >= headNode!.data && data < (headNode?.next!.data)! {
            newNode.prev = headNode
            newNode.next = headNode?.next
            headNode?.next = newNode
            headNode?.next?.prev = newNode
            return llist
        }
        headNode = headNode?.next
    }
    
    //last
    headNode?.next = newNode
    newNode.next = nil
    newNode.prev = headNode
    return llist
}
*/
