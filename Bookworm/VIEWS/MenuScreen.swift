//
//  MenuScreen.swift
//  Bookworm
//
//  Created by yann guyt on 05/10/2023.
//

import SwiftUI
// MARK: - other structs:



struct MenuScreen: View {


// MARK: - DATA
    let gradient = LinearGradient(colors: [Color.indigo ,Color.black],
                                  startPoint: .top, endPoint: .bottom)
    var body: some View {
        // MARK: - someView
        
        NavigationStack {
           
            ZStack {
                gradient
                    .opacity(0.45)
                    .ignoresSafeArea()
                
                VStack {
                    // BIG MOUNTAIN customised NavStack example
                    Rectangle()
                        .fill(Color.clear)
                        .frame(height: 10)
                        .background(LinearGradient(colors: [.black.opacity(0.3), .blue.opacity(0.6)],
                                                   startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                    // Spacer pushes it into top safeArea of NavStack
                    Spacer()
                } // end VStack 1
                
                
                VStack {
// main index menu View
                    
                    NavigationLink(destination: ContentView()) {
                   MyMenuItems(icon: "square.and.pencil", chapterTitle: "@Binding", chapterNo: "1/10")
                    }
                    
                    NavigationLink(destination: MultiLineScreen()) {
                        MyMenuItems(icon: "square.and.pencil", chapterTitle: "Multi-line editor", chapterNo: "2/10")
                    }
                    
                    NavigationLink(destination: ContentCoreData()) {
                        MyMenuItems(icon: "square.and.pencil", chapterTitle: "coreData Teaser", chapterNo: "3/10")
                    }
                    
                    
                    Spacer()
                } // VStack 2
                .padding()
                
                
            } // end ZStack 1
            .navigationTitle("BookWorm Menu")
            
        } // end NavStack
      } //end someView
    // MARK: - METHODS
    }
   


#Preview {
    MenuScreen()
}
