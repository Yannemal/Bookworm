//
//  RatingView.swift
//      Bookworm -> customisable component View
//      100DaysofSwiftUI by @Twostraws Paul Hudson 23NOV29021
//               Student: yannemal on 08OCT2023.
//

import SwiftUI
// other structs:
struct RatingView: View {
    // DATA:
    @Binding var rating: Int
    // will receive an @State value from a different view
    var label = ""
    var maximumRating = 5
    
    var offImage : Image?
    var onImage = Image(systemName: "star.fill")
    
    var offColor = Color.gray
    var onColor = Color.yellow
    
    var body: some View {
    //someView
        
        HStack {
            if !label.isEmpty {
                // if label is NOT empty
                Text(label)
                //empty in previews
            }
            
            ForEach(1..<maximumRating + 1, id: \.self) { number in
             image(for: number)
                    .foregroundStyle( number > rating ? offColor : onColor)
                    .onTapGesture {
                        rating = number
                    }
            }
        }
        
        
    }
    // METHODS:
    func image(for number: Int) -> Image {
        if number > rating {
            return offImage ?? onImage
        } else {
            return onImage
        }
        
        
    }
}


#Preview {
    RatingView(rating: .constant(2))
}

