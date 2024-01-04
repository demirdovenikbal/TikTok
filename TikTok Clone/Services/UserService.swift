//
//  UserService.swift
//  TikTok Clone
//
//  Created by Ikbal Demirdoven on 2023-12-23.
//

import FirebaseAuth
import FirebaseFirestore
import FirebaseFirestoreSwift

struct UserService {
    func uploadUserData(user : User) async throws {
        do {
            let userData = try Firestore.Encoder().encode(user) //encoding the object to upload it to Firestore
            try await Firestore.firestore().collection("users").document(user.id).setData(userData) //uploading the object to the Firestore...
        } catch {
            throw error
        }
    }
    
    func fetchUsers() async throws -> [User] {
        do {
            let snapshot = try await Firestore.firestore().collection("users").getDocuments()
            return snapshot.documents.compactMap({ try? $0.data(as: User.self)})
        } catch {
            throw error
        }
    }
}
