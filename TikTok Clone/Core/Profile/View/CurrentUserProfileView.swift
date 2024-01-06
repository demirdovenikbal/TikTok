//
//  CurrentUserProfileView.swift
//  TikTok Clone
//
//  Created by Ikbal Demirdoven on 2023-12-14.
//

import SwiftUI

struct CurrentUserProfileView: View {
    let authService : AuthService
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 2) {
                    //profile header
                    ProfileHeaderView(user: DeveloperPreview.users[0])
                    //post grid
                    PostGridView()
                }
                .padding(.top)
            }
            .navigationTitle("ikbaldemirdoven")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        authService.signOut()
                    } label: {
                        Text("Sign out")
                            .fontWeight(.semibold)
                            .font(.subheadline)
                    }
                }
            }
        }
    }
}

#Preview {
    CurrentUserProfileView(authService: AuthService())
}
