//
//  CurrentUserProfileView.swift
//  TikTok Clone
//
//  Created by Ikbal Demirdoven on 2023-12-14.
//

import SwiftUI

struct CurrentUserProfileView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 2) {
                    //profile header
                    ProfileHeaderView()
                    //post grid
                    PostGridView()
                }
                .padding(.top)
            }
            .navigationTitle("ikbaldemirdoven")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    CurrentUserProfileView()
}
