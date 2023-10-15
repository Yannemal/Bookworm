//
//  MyMenuItems.swift
//  Bookworm
//
//  Created by yannemal on 07/10/2023.
//

import SwiftUI

struct MyMenuItems: View {
    // default data
    let icon : String
    let chapterTitle : String
    let chapterNo : String
    
    var body: some View {
        
            VStack {
            Spacer().frame(width: 0, height: 36.0, alignment: .topLeading)
            HStack {
                // add image in HStack
                Image(systemName: icon)
                    .bold()
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                Text(chapterTitle)
                    .bold()
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                // not very good on a white background in Previews Light Mode
                Spacer() // push to the left
                Text(chapterNo)
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
}


#Preview {
    MyMenuItems(icon: "square.and.pencil", chapterTitle: "chapterSomething?", chapterNo: "x/10")
}
