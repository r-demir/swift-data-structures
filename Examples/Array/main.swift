//
//  main.swift
//  Array
//
//  Created by ramazan demir on 28.07.2021.
//

import Foundation

print("\n>>>>> Hello, Array! >>>>>\n")




//MARK: Array: map(_:) example
func hashtags(in string: String) -> [String] {
    let words = string.components(separatedBy: .whitespacesAndNewlines)

    // Note: Filter lets us remove any elements that don't fit a
    // given requirement, in this case those that don't start
    // with a leading hash character:
    
    // Additional: converted lowercased
    
    return words.filter { $0.starts(with: "#") }.map{ $0.lowercased() }
}
    
let tags = hashtags(in: "#Swift by Sundell #Basics")
print("\nMap: tags: \(tags)") // ["#swift", "#basics"]



//MARK: Array: map(_:) example
let numbers = [1, 2, 3, 4, 5]
let doubled = numbers.map { $0 * 2 }
let strings = numbers.map { String($0) }
print("\nMap: doubled: \(doubled)")
print("\nMap: string numbers: \(strings)")

let wizards = ["Harry", "Hermione", "Ron"]
let uppercased = wizards.map { $0.uppercased() }
print("\nMap: uppercased wizards: \(uppercased)")
 



//MARK: Array: compactMap(_:) example
//let imageViews = view.subviews.compactMap { $0 as? UIImageView }
//let urls = urlStrings.compactMap { URL(string: $0) }

 

//MARK: Array: flatMap(_:) example
let numberStrings = ["1", "2", "3"].flatMap { Int($0) }
print("\nFlatMap: \(numberStrings)")
 


//MARK: Array: joined(seperator:) example
// A string array of three elements.
let animals = ["cat", "dog", "bird"]
let result = animals.joined(separator: ",")
print("Joined: \(result)")

