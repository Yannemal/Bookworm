//
//  ContentView.swift
//  Bookworm
// Day 53  100 Days of SwiftUI tutorial by @TwoStraws
//  Created by yannemal on 03/10/2023.
//

import SwiftUI
// other structs / * *********************************************** */
struct PushButton: View {
    // Data:
    let title : String
    @State var isOn: Bool
    
    // array of 2 color choices
    var onColors = [Color.red, Color.yellow]
    var offColors = [Color(white: 0.6), Color(white: 0.4)]
    
    //conform to View
    var body: some View {
        Button(title) {
            isOn.toggle()
        }
        .padding()
        .background(
            // a gradient needs an array of colors :
            LinearGradient(colors: isOn ? onColors : offColors,
                           startPoint: .top,
                           endPoint: .bottom
                          )
        )
        .foregroundColor(.white)
        .clipShape(Capsule())
        .shadow(radius: isOn ? 0 : 5)
        
    }
    // methods:
}

// * *********************************************** */

struct ContentView: View {
// MARK: - DATA:
    @State private var rememberMe = false
    
    var body: some View {
    // MARK: - someVIEW:
        VStack {
            
            PushButton(title: "Remember moi", isOn: rememberMe)
            Text(rememberMe ? "On" : "Off")
    
        }
       
        
    } // end some View
    // MARK: - METHODS:
    
}

#Preview {
     ContentView()

}
