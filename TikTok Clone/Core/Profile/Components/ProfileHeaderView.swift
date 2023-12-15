//
//  ProfileHeaderView.swift
//  TikTok Clone
//
//  Created by Ikbal Demirdoven on 2023-12-14.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing: 16) {
            VStack(spacing: 8) {
                //profile image
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray3))
                //username
                Text("@ikbaldemirdoven")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            //stats view
            HStack(spacing: 16) {
                UserStatView(title: "Following", value: 4)
                UserStatView(title: "Followers", value: 5)
                UserStatView(title: "Likes", value: 98)
                .frame(width: 80, alignment: .center)
            }
        }
    }
}

#Preview {
    ProfileHeaderView()
}

struct UserStatView: View {
    let title: String
    let value: Int
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.bold)
            Text(title)
                .font(.caption)
                .foregroundStyle(.gray)
        }
        .frame(width: 80, alignment: .center)
    }
}
