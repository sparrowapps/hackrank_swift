//
//  linkedlist.swift
//  hackrank
//
//  Created by  sparrow on 2020/03/19.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation



public class LinkedList<T> {
    
    public class Node<T> {
        var value: T
        var next: Node?
        weak var previous: Node?
        weak var nextNode: Node?
        
        public init(value: T) {
            self.value = value
        }
    }
    
    private var head: Node<Any>?
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var first: Node<Any>? {
        return head
    }
    
    public var last: Node<Any>? {
        guard var node = head else {
            return nil
        }
        
        while let next = node.next {
            node = next
        }
        return node
    }
    
    public func append(value: T) {
        let newNode = Node(value: value)
        if let lastNode = last {
            newNode.previous = lastNode as? Node<T>
            lastNode.next = newNode as? Node<Any>
        } else {
            head = newNode as? Node<Any>
        }
    }
    
    public var count: Int {
        guard var node = head else {
            return 0
        }
        
        var count = 1
        while let next = node.next {
            node = next
            count += 1
        }
        return count
    }
    
    public var print: String {
        var s = "["
        var node = head
        while node != nil {
            s += "\(node!.value)"
            node = node!.next
            if node != nil { s += ", " }
        }
        return s + "]"
    }
    
    public func node(atIndex index: Int) -> Node<Any> {
        if index == 0 {
            return head!
        } else {
            var node = head!.next
            for _ in 1..<index {
                node = node?.next
                if node == nil { //(*1)
                    break
                }
            }
            return node!
        }
    }
    
    public func insert(value: T, atIndex index: Int) {
        let newNode = Node(value: value)
        if index == 0 {
            newNode.next = head as? LinkedList<T>.Node<T>
            head?.previous = newNode as? LinkedList<T>.Node<Any>
            head = newNode as? LinkedList<T>.Node<Any>
        } else {
            let previousNode = self.node(atIndex: index-1)
            let nextNode = previousNode.next
            
            newNode.previous = previousNode as? LinkedList<T>.Node<T>
            newNode.nextNode = previousNode.next as? LinkedList<T>.Node<T>
            previousNode.next = newNode as? LinkedList<T>.Node<Any>
            nextNode?.previous = newNode as? LinkedList<T>.Node<Any>
        }
    }
    
    public func remove(node: Node<Any>) -> T {
        let previousNode = node.previous
        let nextNode = node.next
        
        if let previousNode = previousNode {
            previousNode.next = nextNode
        } else {
            head = nextNode
        }
        nextNode?.previous = previousNode
        
        node.previous = nil
        node.next = nil
        return node.value as! T
    }
    
    public func removeAt(_ index: Int) -> T {
        let nodeToRemove = node(atIndex: index)
        return remove(node: nodeToRemove)
    }
    
}
