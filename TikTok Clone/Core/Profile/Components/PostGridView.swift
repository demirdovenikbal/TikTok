//
//  PostGridView.swift
//  TikTok Clone
//
//  Created by Ikbal Demirdoven on 2023-12-14.
//

import SwiftUI

struct PostGridView: View {
    private let gridItem = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1)]
    private let width = (UIScreen.main.bounds.width / 3) - 1
    var body: some View {
        LazyVGrid(columns: gridItem, spacing: 1) {
            ForEach(0..<15) {
                post in
                Rectangle()
                    .fill(.blue)
                    .frame(width: width, height: 160)
                    .clipped()
            }
        }
    }
}

#Preview {
    PostGridView()
}
