//
//  ItemView.swift
//  TodoListAPPP
//
//  Created by Pablo Alvarado on 11/04/24.
//

import SwiftUI

struct ItemView: View {
    
    let currentItem: TodoItem
    
    var body: some View {
        Label(

                    title: {

                        Text(currentItem.title)
                        
                    },
                    icon: {
                        
                        Image(
                            systemName: currentItem.done == true ? "checkmark.circle" : "circle"
                        )

                    }

                )
    }
}

#Preview {
    List{

        ItemView(
            currentItem: firstItem
        )
        
        ItemView(
            currentItem: secondItem
        )
        
        ItemView(
            currentItem: thirdItem
        )



        }

        

    }
