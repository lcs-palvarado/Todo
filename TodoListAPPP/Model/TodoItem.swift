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
