//
//  ContentView.swift
//  Bookworm
// Day 53  100 Days of SwiftUI tutorial by @TwoStraws
//  Created by yannemal on 03/10/2023.
//

import SwiftUI
// other structs
struct PushButton: View {
    // Data:
    let title : String
    @State private var isOn: Bool
    
    var onColors = [Color.red, Color.yellow]
    var offColors = [Color(white: 0.6), Color(white: 0.4)]
    
    //conform to View
    var body: some View {
        Button(title) {
            isOn.toggle()
        }
        .padding()
        .background(
            LinearGradient(colors: isOn ? onColors : offColors,
                           startPoint: .top,
                           endPoint: .bottom
                          )
        )
        .foregroundColor(.white)
        .clipShape(Capsule())
        
    }
    // methods:
}

// * *********************************************** */

struct ContentView: View {
// MARK: - DATA:
    
    var body: some View {
    // MARK: - someVIEW:
        
       
        
    } // end some View
    // MARK: - METHODS:
    
}

#Preview {
    ContentView()
}
