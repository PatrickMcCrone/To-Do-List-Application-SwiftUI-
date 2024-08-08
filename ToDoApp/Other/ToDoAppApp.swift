//
//  ToDoAppApp.swift
//  ToDoApp
//
//  Created by Patrick McCrone on 8/5/24.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoAppApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
