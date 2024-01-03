//
//  PreviewProvider.swift
//  TikTok Clone
//
//  Created by Ikbal Demirdoven on 2023-12-23.
//

import Foundation

struct DeveloperPreview {
    static var users : [User] = [
        .init(id: NSUUID().uuidString, username: "ikbaldemirdoven", email: "ikbaldemirdoven@icloud.com", fullname: "Ikbal Demirdoven"),
        .init(id: NSUUID().uuidString, username: "furkandemirdoven", email: "furkandemirdoven@gmail.com", fullname: "Furkan Demirdoven"),
        .init(id: "Tansu Kacmaz", username: "tansukacmaz", email: "tansukacmaz@gmail.com", fullname: "tansukacmaz")]
}
