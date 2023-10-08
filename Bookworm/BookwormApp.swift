//
//  BookwormApp.swift
//  Bookworm
//
//  Created by yann guyt on 03/10/2023.
//

import SwiftUI

@main
struct BookwormApp: App {
    // DATA:
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            MenuScreen()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
