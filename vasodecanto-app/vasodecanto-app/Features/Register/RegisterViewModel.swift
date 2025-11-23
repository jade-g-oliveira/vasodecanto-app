//
//  RegisterViewModel.swift
//  vasodecanto-app
//
//  Created by Bruna Fonseca on 22/11/25.
//

import SwiftUI

@MainActor
final class RegisterViewModel: ObservableObject {
    private let authManager: AuthManager

    @Published var email = ""
    @Published var name = ""
    @Published var password = ""
    @Published var confirmPassword = ""

    init(authManager: AuthManager) {
        self.authManager = authManager
    }

    func signIn() {
        guard !email.isEmpty, !password.isEmpty else {
            print("No email or pasword found.")
            return
        }

        Task {
            do {
                let resultData = try await authManager.registerUser(email: email, password: password)
                authManager.currentUser = AuthDataResultModel(user: resultData.user)
                print("User successfully registered")
            } catch {
                print("RegisterError \(error)")
            }
        }
    }
}
