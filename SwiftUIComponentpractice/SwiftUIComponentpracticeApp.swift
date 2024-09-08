//
//  SwiftUIComponentpracticeApp.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 08/09/24.
//

import SwiftUI

@main
struct SwiftUIComponentpracticeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
