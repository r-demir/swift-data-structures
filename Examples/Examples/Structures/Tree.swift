//
//  Tree.swift
//  Examples
//
//  Created by ramazan demir on 27.07.2021.
//

import Foundation

class TreeNode: CustomStringConvertible {
    var value: String
    var parent: TreeNode?
    var children: [TreeNode] = []
    
    var description: String {
        var text = "#\(value)"
        if !children.isEmpty {
          text += " { " + children.map { $0.description }.joined(separator: ", ") + " } "
        }
        return text
    }
    
    var count: Int {
        1 + children.reduce(0) {$0 + $1.count}
    }
    
    init(value: String) {
        self.value = value
    }
    
    func add(_ child: TreeNode) {
        child.parent = self
        self.children.append(child)
    }
    
    func search(_ value: String) -> TreeNode? {
        if self.value == value { return self }
        for child in children {
            if let found = child.search(value) {
                return found
            }
        }
        return nil
    }
    
    func traverse() {
        var text = ""
        if !children.isEmpty {
            text += " {"
            for child in children {
                if children.last?.value != child.value {
                    text += child.description + ", "
                } else {
                    text += child.description
                }
            }
            text += "} "
        }
        print(text)
    }
     
}





