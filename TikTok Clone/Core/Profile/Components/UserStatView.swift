//
//  UserStatView.swift
//  TikTok Clone
//
//  Created by Ikbal Demirdoven on 2023-12-14.
//

import SwiftUI

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


#Preview {
    UserStatView(title: "Following", value: 1)
}
