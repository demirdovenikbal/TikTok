//
//  ExploreView.swift
//  TikTok Clone
//
//  Created by Ikbal Demirdoven on 2023-12-13.
//

import SwiftUI

struct ExploreView: View {
    @StateObject var viewModel = SearchViewModel(userService: UserService())
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing : 16) {
                    ForEach(viewModel.users) {
                        user in
                        NavigationLink(value: user) {
                            UserCell(user: user )
                                .padding(.horizontal)
                        }
                    }
                    .searchable(text: $searchText)
                }
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
            .navigationDestination(for: User.self, destination: { user in
                UserProfileView(user: user)
            })
        }
    }
}

#Preview {
    ExploreView()
}
