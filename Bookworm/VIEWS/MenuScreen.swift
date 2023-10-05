//
//  MenuScreen.swift
//  Bookworm
//
//  Created by yann guyt on 05/10/2023.
//

import SwiftUI

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
                        VStack {
                            Spacer().frame(width: 0, height: 36.0, alignment: .topLeading)
                            HStack {
                                // add image in HStack
                                Image(systemName: "square.and.pencil")
                                    .bold()
                                    .font(.system(size: 25))
                                    .foregroundColor(.white)
                                Text("@Binding")
                                    .bold()
                                    .font(.system(size: 25))
                                    .foregroundColor(.white)
                                Spacer() // push to the left
                                Text("1/10")
                                    .bold()
                                    .font(.system(size: 18))
                                    .foregroundColor(.white)
                            }
                            Rectangle()
                                            .fill(Color.white)
                                            .frame(width: UIScreen.main.bounds.width - 60, height: 1)
                                            .padding(.top, 6.0)
                        }
                    }
                    
                    NavigationLink(destination: threeTenView()) {
                        VStack {
                            Spacer().frame(width: 0, height: 36.0, alignment: .topLeading)
                            HStack {
                                // add image in HStack
                                Image(systemName: "square.and.pencil")
                                    .bold()
                                    .font(.system(size: 25))
                                    .foregroundColor(.white)
                                    .opacity(0.5)
                                
                                Text("coreData teaser")
                                    .bold()
                                    .font(.system(size: 25))
                                    .foregroundColor(.white)
                                Spacer() // push to the left
                                Text("3/10")
                                    .bold()
                                    .font(.system(size: 18))
                                    .foregroundColor(.white)
                            }
                            Rectangle()
                                            .fill(Color.white)
                                            .frame(width: UIScreen.main.bounds.width - 60, height: 1)
                                            .padding(.top, 6.0)
                        }
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
