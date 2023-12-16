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
            //profile image
            VStack(spacing: 8) {
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
            //action buttons
            VStack {
                HStack {
                    Button {
                    } label: {
                        Text("Edit profile")
                            .frame(width: 150, height: 50)
                            .background(Color(.systemGray5))
                            .clipShape(RoundedRectangle(cornerRadius: 7))
                    }
                    Button {
                        
                    } label: {
                        Text("Share profile")
                            .frame(width: 150, height: 50)
                            .background(Color(.systemGray5))
                            .clipShape(RoundedRectangle(cornerRadius: 7))
                        
                    }
                    Button {
                        
                    } label: {
                        Image(systemName: "person.badge.plus")
                            .imageScale(.large)
                            .frame(width: 45, height: 50)
                            .background(Color(.systemGray5))
                            .clipShape(RoundedRectangle(cornerRadius: 7))
                    }
                }
                .foregroundStyle(.black)
                .font(.subheadline)
                .fontWeight(.semibold)
                VStack {
                    Button {
                        
                    } label: {
                        Text("+ Add bio")
                            .foregroundStyle(.black)
                            .font(.subheadline)
                            .frame(width: 90, height: 25)
                            .background(Color(.systemGray5))
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                    }
                    Button {
                        
                    } label: {
                        HStack {
                            Image(systemName: "camera")
                                .foregroundStyle(.red)
                            Text("Add yours")
                                .foregroundStyle(.black)
                                .fontWeight(.semibold)
                        }
                    }
                }
                Divider()
            }
        }
    }
}

#Preview {
    ProfileHeaderView()
}
