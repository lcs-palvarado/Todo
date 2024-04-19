//
//  ContentView.swift
//  TodoListAPPP
//
//  Created by Pablo Alvarado on 11/04/24.
//
import SwiftData
import SwiftUI

struct LandingView: View {
    //MARK: STORED PROPERTIES
    
    //The item currently being added
    @State var newItemDescription = ""
    
    //The search text
    @State var searchText = ""
    
    //Acces the model context (required to do additions,deletions, updates, etc)
    @Environment(\.modelContext)var modelContext
        
    @Query var todos: [TodoItem]
    
    //MARK: COMPUTED PROPERTIES
    var body: some View {
        NavigationView{
            
            
            VStack{
                
                List {
                    ForEach(todos) { todo in
                        
                        ItemView(currentItem: todo)

                    }
                    .onDelete(perform: removeRows)
                }
                .searchable(text: $searchText)
                
                HStack{
                    TextField(
                        "Enter a to-do item",
                        text: $newItemDescription
                    )
                    
                    Button("Add"){
                        //Add the new to-do item
                        createToDo(withTitle: newItemDescription)
                    }
                    .font(.caption)
                    .disabled(newItemDescription.isEmpty == true)
                }
                .padding(
                    20
                )
            }
            .navigationTitle("To do")
            .onAppear{
                printCommandToOpenDatabaseFile()
            }
        }
    }
    //Mark: functions
    func createToDo(withTitle title: String) {
        
        //Create new todo item instance
        let todo = TodoItem(
            title: title,
            done: false
        )
        
        //Apend to the array
        modelContext.insert(todo)
    }
    
    func removeRows(at offsets: IndexSet) {
        
        // Accept the offset within the list
        // (the position of the item being deleted)
        //
        // Then ask the model context to delete this
        // for us, from the 'todos' array
        for offset in offsets {
            modelContext.delete(todos[offset])
        }
    }
    
}


//#Preview {
    //LandingView()
//}
