//
//  main.swift
//  Examples
//
//  Created by Ramazan Demir on 29.06.2021.
//

import Foundation




//MARK: LinkedList exercise

var list = LinkedList()
list.add(value: "A")
list.add(value: "B")
list.add(value: "C")
//list.add(value: "D")
//list.add(value: "E")
list.traverse()

var lastRemoved = list.removeLast()
list.traverse()
 




//MARK: Tree exercise

let sports = TreeNode(value: "Sports")
let indoor = TreeNode(value: "Indoor")
let outdoor = TreeNode(value: "Outdoor")
sports.add(indoor)
sports.add(outdoor)

let tableTennis = TreeNode(value: "Table Tennis")
let chess = TreeNode(value: "Chess")
indoor.add(tableTennis)
indoor.add(chess)

let football = TreeNode(value: "Football")
let rugby = TreeNode(value: "Rugby")
outdoor.add(football)
outdoor.add(rugby)

let found = sports.search("Rugby")
print("Found: \(found?.value ?? "nil")")


sports.traverse()
