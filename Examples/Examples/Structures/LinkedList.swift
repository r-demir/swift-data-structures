//
//  LinkedList.swift
//  Examples
//
//  Created by ramazan demir on 26.07.2021.
//


/*
    2 type of Linked Lists:
        1 - Singly linked lists
        2 - Doubly linked lists
 
    We're implementing singly linked list
*/


import Foundation

class Node {
    var value: String?
    var next: Node?
    
    init(value: String?) {
        self.value = value
    }
}

    
struct LinkedList {
    private var head: Node?
    private var count = 0
    
    mutating func isEmpty() -> Bool {
        return head == nil
    }
    
    mutating func size() -> Int {
        return count
    }
    
    mutating func add(value: String) {
        let node = Node(value: value)
        if head == nil {
            head = node
        } else {
            var tail = head
            while tail?.next != nil {
                tail = tail?.next
            }
            tail?.next = node
        }
        count += 1
    }
    
    @discardableResult mutating func removeLast() -> Node? {
        if head == nil || head?.next == nil {
            head = nil
            return head
        } else {
            var tail = head
            var previous: Node?
            while tail?.next != nil {
                previous = tail
                tail = tail?.next
            }
            previous?.next = nil
            return tail
        }
    }
    
    func traverse() {
        var result = "Traverse List: "
        var tail = head
        while tail?.next != nil {
            result += "->\(tail?.value ?? "nil") "
            tail = tail?.next
        }
        result += "->\(tail?.value ?? "nil") "
        print(result)
    }
    
}
