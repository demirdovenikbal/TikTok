//
//  ExploreView.swift
//  TikTok Clone
//
//  Created by Ikbal Demirdoven on 2023-12-13.
//

import SwiftUI

struct ExploreView: View {
    @State private var users = DeveloperPreview.users
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing : 16) {
                    ForEach(users) {
                        user in
                        UserCell(user: user )
                            .padding(.horizontal)
                    }
                    .searchable(text: $searchText)
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
