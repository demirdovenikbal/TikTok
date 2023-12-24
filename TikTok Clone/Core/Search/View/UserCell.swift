//
//  UserCell.swift
//  TikTok Clone
//
//  Created by Ikbal Demirdoven on 2023-12-13.
//

import SwiftUI

struct UserCell: View {
    let user : User
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 48, height: 48)
                .foregroundStyle(Color(.systemGray3))
            VStack(alignment: .leading) {
                Text("\(user.username)")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Text("\(user.fullname)")
                    .font(.footnote)
            }
            Spacer()
        }
    }
}

#Preview {
    UserCell(user: DeveloperPreview.users[0])
}
