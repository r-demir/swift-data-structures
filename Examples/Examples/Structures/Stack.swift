//
//  Stack.swift
//  Examples
//
//  Created by Ramazan Demir on 29.06.2021.
//

import Foundation


//LIFO (Last in, First out)
struct Stack {
    
    private var items: [String] = []
    
    var top: String? {
        return items.last
    }
    
    func isEmpty() -> Bool {
        return items.isEmpty
    }
    
    mutating func push(_ item: String) {
        items.append(item)
    }
    
    mutating func pop() -> String {
        items.removeLast()
    }
    
}
