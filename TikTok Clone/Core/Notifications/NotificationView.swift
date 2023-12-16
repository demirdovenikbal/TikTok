//
//  NotificationView.swift
//  TikTok Clone
//
//  Created by Ikbal Demirdoven on 2023-12-13.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 35, height: 35)
                .foregroundStyle(Color(.systemGray3))
            HStack {
                Text("ikbaldemirdoven ")
                    .font(.footnote)
                    .fontWeight(.semibold)
                +
                Text("liked one of your posts. ")
                    .font(.footnote)
                +
                Text("3d")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            Spacer()
            Rectangle()
                .frame(width: 48, height: 48)
                .clipShape(RoundedRectangle(cornerRadius: 6))
        }
        .padding(.horizontal)
    }
}

#Preview {
    NotificationView()
}
