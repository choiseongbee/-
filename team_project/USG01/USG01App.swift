//
//  USG01App.swift
//  USG01
//
//  Created by 최성빈 on 2023/01/12.
//

import SwiftUI

@main
struct USG01App: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            NameSettingsView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
