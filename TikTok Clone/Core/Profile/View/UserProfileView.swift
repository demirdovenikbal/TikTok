//
//  UserProfileView.swift
//  TikTok Clone
//
//  Created by Ikbal Demirdoven on 2024-01-05.
//

import SwiftUI

struct UserProfileView: View {
    let user : User
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 2) {
                //profile header
                ProfileHeaderView(user: user)
                //post grid
                PostGridView()
            }
            .padding(.top)
        }
    }
}

#Preview {
    UserProfileView(user: DeveloperPreview.users[0])
}
