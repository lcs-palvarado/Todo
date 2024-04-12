//
//  ContentView.swift
//  TodoListAPPP
//
//  Created by Pablo Alvarado on 11/04/24.
//

import SwiftUI

struct LandingView: View {
    //MARK: STORED PROPERTIES

    //The item currently being added
    @State var newItemDescription = ""

    //The search text
    @State var searchText = ""
    
    //The list of to-do items
    @State var todos: [TodoItem] = exampleItems
    //MARK: COMPUTED PROPERTIES
    var body: some View {
        NavigationView{

            
                    VStack{

                        List (todos){ todo in

                            ItemView(currentItem: todo)
                            
                        }
                        .searchable(text: $searchText)
                        
                        HStack{
                            TextField(
                                "Enter a to-do item",
                                text: $newItemDescription
                            )
                            
                            Button(
                                "Add"
                            ){
                                //Add the new to-do item
                            }
                            .font(
                                .caption
                            )
                        }
                        .padding(
                            20
                        )
                    }
                    .navigationTitle(
                        "To do"
                    )
                }
            }
        }


#Preview {
    LandingView()
}
