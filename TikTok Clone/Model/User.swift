//
//  User.swift
//  TikTok Clone
//
//  Created by Ikbal Demirdoven on 2023-12-23.
//

import Foundation

struct User : Identifiable, Codable {
    let id : String
    var username : String
    let email : String
    var fullname : String
    var bio : String?
    var profileImageURL : String?
}
