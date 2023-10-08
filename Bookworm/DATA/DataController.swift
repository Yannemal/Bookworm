//
//  DataController.swift
//  Bookworm
// Day 53  100 Days of SwiftUI tutorial by @TwoStraws
//  Student: by yannemal on 08/10/2023.

import Foundation
import CoreData

class DataController: ObservableObject {
    
    let container = NSPersistentContainer(name: "Bookworm")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load : \(error.localizedDescription)")
            }
        }
        
    }
}
