//
//  LoginViewModel.swift
//  TikTok Clone
//
//  Created by Ikbal Demirdoven on 2023-12-20.
//

import Foundation

class LoginViewModel : ObservableObject {
    private let authService : AuthService
    init(authService: AuthService) {
        self.authService = authService
    }
    
    func login(email : String, password : String) async {
        do {
            try await authService.login(email: email, password: password)
        } catch {
            print("Debug : Failed to login with error \(error.localizedDescription)")
        }
    }
}
