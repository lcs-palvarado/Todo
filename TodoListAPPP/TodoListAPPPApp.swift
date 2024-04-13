//
//  TodoListAPPPApp.swift
//  TodoListAPPP
//
//  Created by Pablo Alvarado on 11/04/24.
//
import SwiftData
import SwiftUI

@main
struct TodoListAPPPApp: App {
    var body: some Scene {
        WindowGroup {
            LandingView()
                .modelContainer(for: TodoItem.self)
        }
    }
}
