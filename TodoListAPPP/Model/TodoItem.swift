//
//  TodoItem.swift
//  TodoListAPPP
//
//  Created by Pablo Alvarado on 11/04/24.
//

import Foundation

struct TodoItem: Identifiable {
    let id = UUID()
    var title: String
    var done: Bool
}

let firstItem = TodoItem(title: "Study for Chemistry quiz", done: false)

    let secondItem = TodoItem(title: "Finish Computer Science assignment", done: true)

    let thirdItem = TodoItem(title: "Go for a run around campus", done: false)

let exampleItems = [
    
   firstItem
   ,
   secondItem
   ,
   thirdItem

]
