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
    
    //MARK: COMPUTED PROPERTIES
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    LandingView()
}
