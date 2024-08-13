//
//  ContentView.swift
//  interactiveUI
//
//  Created by Scholar on 08/08/2024.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var name = ""
    @State private var textTitle = "What is your name?"
    
    var body: some View {
        VStack {
            
            Text(textTitle)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
            TextField("", text: $name)
            .multilineTextAlignment(.center)
            .font(.title)
            .border(Color.gray, width : 1)
            
            .padding()
            
            Button("Submit Name") {
                textTitle = "Welcome \(name)!"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.green)
        }
        .padding()
    //this is a comment

    }
}

#Preview {
    ContentView()
}
