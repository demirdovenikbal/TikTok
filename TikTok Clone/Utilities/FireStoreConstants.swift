//
//  Constants.swift
//  TikTok Clone
//
//  Created by Ikbal Demirdoven on 2024-01-06.
//

import FirebaseFirestore

struct FireStoreConstants {
    static let root = Firestore.firestore()
    static let usersCollections = root.collection("users")
    
}
