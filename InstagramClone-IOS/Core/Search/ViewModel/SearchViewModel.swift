//
//  SearchViewModel.swift
//  InstagramClone-IOS
//
//  Created by SinemApaydın on 23.08.2023.
//

import Foundation

class SearchViewModel: ObservableObject {
    @Published var users = [User]()
    
    init(){
        Task { try await fetchAllUsers()}
    }
    
    @MainActor
    func fetchAllUsers () async throws {
        self.users = try await UserService.fetchAllUsers()
    }
    
}
