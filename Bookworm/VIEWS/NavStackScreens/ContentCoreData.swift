//
//  ContentCoreData.swift
//  Bookworm
// 100DaysofSwiftUI by @Twostraws Paul Hudson 23NOV29021
//  Stu dent: by yannemal on 08OCT2023.
//

import SwiftUI
//other structs



struct ContentCoreData: View {
// DATA:
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var students: FetchedResults<Student>

    
    
    var body: some View {
// someVIEW
    
        VStack {
            List(students) { student in
                Text(student.name ?? "Unknown" )
            }
            
            Button("add") {
                let firstNames = ["Ginny", "Harry", " Hermione", "Luna", "Ron"]
                let lastNames = ["Granger", "Lovegood", "Potter", "Weasley"]
                
                let chosenFirstName = firstNames.randomElement()!
                let chosenLastName = lastNames.randomElement()!
                
                let student = Student(context: moc)
                student.id = UUID()
                student.name = "\(chosenFirstName) \(chosenLastName)"

                try? moc.save()
            }
            
        }
   
    }
 // METHODS:
    
}

#Preview {
    ContentCoreData()
}
