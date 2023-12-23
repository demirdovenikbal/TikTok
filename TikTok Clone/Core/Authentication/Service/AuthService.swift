//
//  AuthService.swift
//  TikTok Clone
//
//  Created by Ikbal Demirdoven on 2023-12-20.
//

import Foundation
import Firebase
import FirebaseAuth


class AuthService {
    @Published var userSession : FirebaseAuth.User?
    
    func updateUserSession() {
        self.userSession = Auth.auth().currentUser
    }
    
    func login(email : String, password : String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            print("Debug : User is \(result.user.uid)")
        } catch {
            print("Debug : Failed  to log in user with error : \(error.localizedDescription)")
            throw error
        }
    }
    
    func createUser(email : String, password : String, fullname : String, username : String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            print("Debug : User is \(result.user.uid)")
        } catch {
            print("Debug : Failed  to create the user with error : \(error.localizedDescription)")
            throw error
        }
    }
    
    func signOut() {
        try? Auth.auth().signOut() //signs user out on backend
        self.userSession = nil //updates routing logic by wiping user session
    }
}
