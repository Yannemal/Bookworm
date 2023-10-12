//
//  AddBookView.swift
// 100DaysofSwiftUI by @Twostraws Paul Hudson 23NOV29021
//  Student: by yannemal on 08OCT2023.
//

import SwiftUI
// other structs:


struct AddBookView: View {
// DATA:
    @Environment(\.managedObjectContext) var moc
    @Environment(\.dismiss) var dismiss
    
    @State private var title = ""
    @State private var author = ""
    @State private var rating = 2
    @State private var genre = ""
    @State private var review = ""
    
    let genres = ["Fantasy", "Horror", "Kids", "Mystery", "Poetry", "Romance", "Thriller"]
    
    var body: some View {
        // someVIEW
        NavigationStack {
            // do I need to add this again ?
            Form {
                Section {
                    TextField("📖  Name of book", text: $title)
                        .disableAutocorrection(true)
                    TextField("✍️ author", text: $author)
                        .disableAutocorrection(true)
                    Picker("📚 Genre", selection: $genre) {
                        ForEach(genres, id: \.self) { Text($0) }
                    }
                }
                
                Section {
                    TextEditor(text: $review)
                    
                  RatingView(rating: $rating)
                } header: {
                    Text("🖋️ write a review")
                }
                
                Section {
                    Button("Save     ✨ 📚 ✍🏼 📖") {
                        let newNook = Book(context: moc)
                        newNook.id = UUID()
                        newNook.title = title
                        newNook.author = author
                        newNook.genre = genre
                        newNook.rating = Int16(rating)
                        
                        try? moc.save()
                        dismiss()
                    }
                }
            } // end form
        } // end NavStack
        
        
    } // endSomeView
    // METHODS:
    func buildRating(numberStars: Int) -> String {
        
        var buildString = ""
        for _ in 0...numberStars {
            buildString += "⭐️"
        }
        return buildString
    }
}

#Preview {
    AddBookView()
}
