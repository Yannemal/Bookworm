//
//  DetailView.swift
//  Bookworm
//      Bookworm -> customisable component View
//      100DaysofSwiftUI by @Twostraws Paul Hudson 23NOV29021
//               Student: yannemal on 11OCT2023.
//

import SwiftUI
//other structs:

struct DetailView: View {
    // DATA:
    let book : Book
    
    var body: some View {
        // someView:
        
        ScrollView {
            ZStack(alignment: .bottomTrailing) {
                // build UI
                Image(book.genre ?? "Fantasy")
                    .resizable()
                    .scaledToFit()
                // Image appears behind on 'ZPosition 0'
                Text(book.genre?.uppercased() ?? "FANTASY")
                    .font(.caption)
                    .fontWeight(.black)
                    .padding(8)
                    .foregroundStyle(.white)
                    .background(.black.opacity(0.75))
                    .clipShape(Capsule())
                    .offset(x: -5, y: -5)
                // to bring it in from the bottom right edge
            }
            // next on the ScrollView:
            
            
        }
        .navigationTitle(book.title ?? "Unknown Book")
        .navigationBarTitleDisplayMode(.inline)
        
    } //end someView
    
}

// Preview deleted for coreData makes it more trouble than its worth
