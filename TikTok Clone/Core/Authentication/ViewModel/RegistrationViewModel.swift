//
//  RegistrationViewModel.swift
//  TikTok Clone
//
//  Created by Ikbal Demirdoven on 2023-12-20.
//

import Foundation

class RegistrationViewModel : ObservableObject {
    private let authService : AuthService
    init(authService: AuthService) {
        self.authService = authService
    }
    
    func createUser(email : String, password : String, fullname : String, username : String) async {
        do {
            try await authService.createUser(email: email, password: password, fullname: fullname, username: username)
        } catch {
            print("Debug : Failed to create user with error \(error.localizedDescription)")
        }
    }
}
