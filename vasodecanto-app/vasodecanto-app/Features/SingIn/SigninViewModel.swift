//
//  SigninViewModel.swift
//  vasodecanto-app
//
//  Created by Bruna Fonseca on 25/11/25.
//

import SwiftUI

@MainActor
class SigninViewModel: ObservableObject {
    private let authManager: AuthManager

    @Published var email = ""
    @Published var password = ""

    init(authManager: AuthManager) {
        self.authManager = authManager
    }

    func logIn() {
        Task {
            do {
                let result = try await authManager.signIn(email: email, password: password)
                authManager.currentUser = AuthDataResultModel(user: result.user)
                print("User successfully logged In")
            } catch {
                print("Login Error \(error)")
            }
        }
    }
}
