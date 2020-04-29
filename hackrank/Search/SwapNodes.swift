//
//  SwapNodes.swift
//  hackrank
//
//  Created by  sparrow on 2020/03/28.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

class swapNodeTree {
    class Node {
        var left: Node?
        var right: Node?
        var data = -1
        var height = 1
        init( data: Int) {
            self.data = data
        }
        init( data: Int, height: Int) {
            self.data = data
            self.height = height
        }
    }
    
    var root : Node?
    
    func insertNode( data: Int ) {
        if root == nil {
            root = Node(data: 1)
        } else {
            var q :Queue<Node> = Queue<Node>()
            q.enQueue(value: root!)
            
            while (!q.isEmpty) {
                let n = q.deQueue()
                if n != nil && n?.data != -1 {
                    if n?.left != nil {
                        q.enQueue(value: n!.left!)
                    } else {
                        let insert :Node = Node(data: data, height: (n?.height)! + 1)
                        n?.left = insert
                        return
                    }
                    
                    if n?.right != nil {
                        q.enQueue(value: n!.right!)
                    } else {
                        let insert :Node = Node(data: data, height: (n?.height)! + 1)
                        n?.right = insert
                        return
                    }
                }
            }
        }
    }
    
    func swapNode( height: Int) {
        var q : Queue<Node> = Queue<Node>()
        q.enQueue(value: root!)
        
        while !q.isEmpty {
            let n = q.deQueue()
            if n != nil {
                if n?.height == height {
                    let temp = n?.right
                    n?.right = n?.left
                    n?.left = temp
                } else {
                    if n?.left != nil {
                        q.enQueue(value: (n?.left!)!)
                    }
                    if n?.right != nil {
                        q.enQueue(value: (n?.right!)!)
                    }
                }
            }
        }
        array.removeAll()
        inOrder(node: root)
    }
    
    var array = [Int]()
    
    func inOrder( node: Node?) {
        if node != nil {
            inOrder(node: node?.left)
            if node!.data != -1 {
                array.append(node!.data)
            }
            inOrder(node: node?.right)
        }
    }
}

func swapNodes(indexes: [[Int]], queries: [Int]) -> [[Int]] {
    /*
     * Write your code here.
     */
    let t = swapNodeTree()
    t.insertNode(data: 1)
    
    for index in indexes {
        t.insertNode(data: index[0])
        t.insertNode(data: index[1])
    }
    
    var res = [[Int]]()
    for q in queries {
        t.swapNode(height: q)
        print(t.array)
        res.append(t.array)
    }
    return res
}



