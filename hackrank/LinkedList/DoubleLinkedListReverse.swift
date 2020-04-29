//
//  DoubleLinkedListReverse.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/09.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

final class DoublyLinkedListNode {
    var data: Int
    var next: DoublyLinkedListNode?
    weak var prev: DoublyLinkedListNode? //<--- var로 변경 해야 함

    public init(nodeData: Int) {
        self.data = nodeData
    }
}

final class DoublyLinkedList {
    var head: DoublyLinkedListNode?
    var tail: DoublyLinkedListNode?

    public init() {}

    public func insertNode(nodeData: Int) {
        self.insertNode(node: DoublyLinkedListNode(nodeData: nodeData))
    }

    private func insertNode(node: DoublyLinkedListNode) {
        if let tail = tail {
            tail.next = node
            node.prev = tail
        } else {
            head = node
        }

        tail = node
    }
}

func printDoublyLinkedList(head: DoublyLinkedListNode?, sep: String) {
    var node = head

    while node != nil {
        //fileHandle.write(String(node!.data).data(using: .utf8)!)
        print(node?.data as Any)
        node = node!.next

        if node != nil {
            //fileHandle.write(sep.data(using: .utf8)!)
            print(sep.data(using: .utf8) as Any)
        }
    }
}

// Complete the reverse function below.

/*
 * For your reference:
 *
 * DoublyLinkedListNode {
 *     data: Int
 *     next: DoublyLinkedListNode?
 *     prev: DoublyLinkedListNode?
 * }
 *
 Node Reverse(Node head) {
     Node temp = head;
     Node newHead = head;
     while (temp != null) {
         Node prev = temp.prev;
         temp.prev = temp.next;
         temp.next = prev;
         newHead = temp;
         temp = temp.prev;
     }
     return newHead;
 }
 */
func reverse(llist: DoublyLinkedListNode?) -> DoublyLinkedListNode? {
    if llist == nil {
        return nil
    }
    
    var head = llist
    head!.prev = head!.next
    head!.next = nil
    
    var temp : DoublyLinkedListNode?
    while head?.prev != nil { //<-- prev 가 weak 라서 swift로 동작안함
        head = head!.prev
        temp = head!.next
        head!.next = head!.prev
        head!.prev = temp
        
    }
    return head
}

//let llist = DoublyLinkedList()
//
//llist.insertNode(nodeData: 1)
//llist.insertNode(nodeData: 2)
//llist.insertNode(nodeData: 3)
//llist.insertNode(nodeData: 4)
//let r = reverse(llist: llist.head)
//printDoublyLinkedList(head: r, sep: " ")
//


