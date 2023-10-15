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
    @FetchRequest(sortDescriptors: [
        SortDescriptor(\.title)
    ]) var books: FetchedResults<Book>
    
    @State private var showingAddScreen = false
    
    
    var body: some View {
// someVIEW
        NavigationStack{
            List {
                ForEach(books) { book in
                // build a link:
                    NavigationLink {
                        DetailView(book: book)
                        // for each book of type book defined in CoreData
                        // create <customButton called Navigation Link >
                    } label: {
                        HStack {
                            // UI NavLinkButton design for EachRow: 
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
                .onDelete(perform: deleteBooks)
                
            }
            // navStack Modifiers
                .navigationTitle("BookWorm")
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        EditButton()
                    }
                    
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
    } // end someView
    
 // METHODS:
    func deleteBooks(at offsets: IndexSet) {
        for offset in offsets {
            // find offsetRow in books
            let book = books[offset]
            // delete entity in CoreData:
            moc.delete(book)
            
        }
        // save change to CoreData
        try? moc.save()
    }
    
    
}

#Preview {
    ContentCoreData()
}
