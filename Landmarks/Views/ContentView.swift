//
//  ContentView.swift
//  Landmarks
//
//  Created by Victor dos Santos Feitosa on 16/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
