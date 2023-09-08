//
//  LoginViewModel.swift
//  InstagramClone-IOS
//
//  Created by SinemApaydın on 23.08.2023.
//

import Foundation

class LoginViewModel: ObservableObject {
     
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
