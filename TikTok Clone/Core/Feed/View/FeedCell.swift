//
//  FeedCell.swift
//  TikTok Clone
//
//  Created by Ikbal Demirdoven on 2023-12-12.
//

import SwiftUI

struct FeedCell: View {
    let post : Int
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.pink)
                .containerRelativeFrame([.horizontal, .vertical])
                .overlay {
                    Text("Post \(post)")
                        .foregroundStyle(.white)
                }
            VStack {
                Spacer()
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Text("ikbaldemirdoven")
                            .fontWeight(.semibold)
                        Text("Prepare for take off !!!")
                    }
                    .font(.subheadline)
                    .foregroundStyle(.white)
                    Spacer()
                    VStack(spacing: 28) {
                        Circle()
                            .frame(width: 48, height: 48)
                            .foregroundStyle(.gray)
                        
                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundStyle(.white)
                                Text("1123")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        }
                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName: "ellipsis.bubble.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundStyle(.white)
                                Text("1123")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "bookmark.fill")
                                .resizable()
                                .frame(width: 22, height: 28)
                                .foregroundStyle(.white)
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "arrowshape.turn.up.right.fill")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .foregroundStyle(.white)
                        }
                    }
                    .padding(.bottom, 10)
                }
                .padding(.bottom, 85)
            }
            .padding()
        }
    }
}

#Preview {
    FeedCell(post: 1)
}
