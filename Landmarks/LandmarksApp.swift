//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Victor dos Santos Feitosa on 16/09/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
