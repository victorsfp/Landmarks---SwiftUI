//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Victor dos Santos Feitosa on 16/09/24.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
//        List(landmarks, id: \.id) { landmark in
//            LandmarkRow(landmark: landmark)
//        }
        
//        List(filteredLandmarks) { landmark in
//            NavigationLink {
//                LandmarkDetail(landmark: landmark)
//            } label: {
//                LandmarkRow(landmark: landmark)
//            }
//        }
//        .navigationTitle("Landmarks")
//    
        
        NavigationSplitView {
            List{
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Favorites Only")
                })
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                       LandmarkDetail(landmark: landmark)
                   } label: {
                       LandmarkRow(landmark: landmark)
                   }
                    
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmark")
        } detail: {
            Text("Select a Landmark")
        }
        
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
