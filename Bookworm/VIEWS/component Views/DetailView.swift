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
    // when DetailView is created this value needs to be supplied (see NavLink in ContentCoreData View)
    
    @Environment(\.managedObjectContext) var moc
    // ⬆️ creates a reference ot the CoreDataModel so we can change it
    @Environment(\.dismiss) var dismiss
    // ⬆️ creates space for dismiss modifier
    @State private var showingDeleteAlert = false
    // for the popUp Alert
    
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
            Text(book.author ?? "Unknown author")
                .font(.title)
                .foregroundStyle(.secondary)
            // the reason for a ScrollView is this Review which could be pages long
            Text(book.review ?? "No review")
                .padding()
            RatingView(rating: .constant(Int(book.rating)))
                .font(.largeTitle)
            
        }
        .navigationTitle(book.title ?? "Unknown Book")
        .navigationBarTitleDisplayMode(.inline)
        // AlertPopUp:
        .alert("Delete book ?", isPresented: $showingDeleteAlert) {
            Button("Delete", role: .destructive, action: deleteBook)
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Are you sure ?")
        }
        
        .toolbar {
            Button {
                showingDeleteAlert = true
            } label: {
                Label("Delete this book", systemImage: "trash")
            }
        }
    } //end someView

    //METHODS:
    func deleteBook() {
        moc.delete(book)
        try? moc.save()
        dismiss()
    }
}


// Preview deleted for coreData makes it more trouble than its worth

