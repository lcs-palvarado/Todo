//
//  ItemView.swift
//  TodoListAPPP
//
//  Created by Pablo Alvarado on 11/04/24.
//

import SwiftUI

struct ItemView: View {
    
    @Bindable var currentItem: TodoItem
    
    var body: some View {
        Label(

                    title: {

                        TextField("Enter a to-do item", text: $currentItem.title, axis: .vertical)
                        
                    },
                    icon: {
                        
                        Image(
                            systemName: currentItem.done == true ? "checkmark.circle" : "circle")
                        // Tap to mark as done
                            .onTapGesture {
                                currentItem.done.toggle()
                            }
                    }

                )
    }
}

//#Preview {
    //List{
        //ItemView(currentItem: Binding.constant(firstItem))
        //ItemView(currentItem: Binding.constant(secondItem))
        //}
    //}
