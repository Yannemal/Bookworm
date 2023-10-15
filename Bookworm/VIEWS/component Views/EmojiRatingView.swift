//
//  EmojiRatingView.swift
//  Bookworm
//  100DaysOfSwiftUI by @TwoStraws
//  Created by yannemal on 10/10/2023.
//

import SwiftUI
// other structs:

struct EmojiRatingView: View {
    // DATA:
    let rating: Int16
    
    var body: some View {
    // someVIEW:
        
        switch rating {
        case 1 : return Text("🙈")
        case 2 : return Text("🙄")
        case 3 : return Text("🫨")
        case 4 : return Text("🤩")
        case 5 : return Text("😍 ")
       default : return Text("🤨")
        }
    }
    
    // METHODS:
    
}

#Preview {
    EmojiRatingView(rating: 4)
}
