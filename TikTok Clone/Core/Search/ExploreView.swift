//
//  ExploreView.swift
//  TikTok Clone
//
//  Created by Ikbal Demirdoven on 2023-12-13.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing : 16) {
                    ForEach(0..<20) {
                        user in
                        UserCell()
                            .padding(.horizontal)
                    }
                }
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    ExploreView()
}
