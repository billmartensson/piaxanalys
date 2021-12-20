//
//  piaxanalysApp.swift
//  piaxanalys
//
//  Created by Bill Martensson on 2021-12-20.
//

import SwiftUI
import Firebase

@main
struct piaxanalysApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
