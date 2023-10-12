//
//  ContentCoreData.swift
//  Bookworm
// 100DaysofSwiftUI by @Twostraws Paul Hudson 23NOV29021
//  Student: by yannemal on 08OCT2023.
//  repurposed as the first page in the bookworm app

import SwiftUI
//other structs



struct ContentCoreData: View {
// DATA:
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var books: FetchedResults<Book>
    
    @State private var showingAddScreen = false
    
    
    var body: some View {
// someVIEW
        NavigationStack{
            List {
                ForEach(books) { book in
                // build a link:
                    NavigationLink {
                        Text(book.title ?? "Unknown Title")
                        // nil coalesce '??' everything w CoreData
                    } label: {
                        HStack {
                            EmojiRatingView(rating: book.rating)
                                .font(.largeTitle)
                            
                            VStack(alignment: .leading) {
                                Text(book.title ?? "Title Unknown")
                                    .font(.headline)
                                
                                Text(book.author ?? "Author Unknown")
                                    .foregroundStyle(.secondary)
                            }
                        }
                    }
                }
            }
                .navigationTitle("BookWorm")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            showingAddScreen.toggle()
                        } label: {
                            Label("Add Book", systemImage: "plus")
                            }
                        }
                    }
                .sheet(isPresented: $showingAddScreen) {
                    AddBookView()
                }
                
        } // end NavStack
    }
 // METHODS:
    
}

#Preview {
    ContentCoreData()
}
