//
//  SearchViewModel.swift
//  TikTok Clone
//
//  Created by Ikbal Demirdoven on 2023-12-23.
//

import Foundation

class SearchViewModel : ObservableObject {
    @Published var users = [User]()
    private let userService : UserService
    init(userService : UserService) {
        self.userService = userService
        Task { await fetchUsers() }
    }
    
    func fetchUsers() async {
        do {
            self.users = try await userService.fetchUsers()
        } catch {
            print("Debug failed to fetch users with error \(error.localizedDescription)")
        }
    }
    
}
