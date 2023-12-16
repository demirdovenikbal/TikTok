//
//  UserCell.swift
//  TikTok Clone
//
//  Created by Ikbal Demirdoven on 2023-12-13.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 48, height: 48)
                .foregroundStyle(Color(.systemGray3))
            VStack(alignment: .leading) {
                Text("ikbaldemirdoven")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Text("Ikbal Demirdoven")
                    .font(.footnote)
            }
            Spacer()
        }
    }
}

#Preview {
    UserCell()
}
