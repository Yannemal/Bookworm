//
//  MultiLineScreen.swift
//  Bookworm
//  chapter 2/10 @TwoStraws 100DaysOfSwiftUI
//  Created by yannemal on 07/10/2023.
//

import SwiftUI

struct MultiLineScreen: View {
    @AppStorage("notes") private var notes = ""
    

    var body: some View {
        ZStack {
            TextEditor(text: $notes)
                .navigationTitle("Notes")
                .padding()
        }
        Spacer()
        HStack{
            Spacer()
            NavigationLink("3/10 >", destination: {
                threeTenView()
            })
            .padding(15)
            .foregroundColor(.white)
            .background(.blue)
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    MultiLineScreen()
}
