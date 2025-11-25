//
//  AuthManager.swift
//  vasodecanto-app
//
//  Created by Bruna Fonseca on 20/11/25.
//

import Foundation
import FirebaseAuth

struct AuthDataResultModel {
    let uid: String?
    let email: String?
    let photoUrl: String?

    init(user: User?) {
        self.uid = user?.uid
        self.email = user?.email
        self.photoUrl = user?.photoURL?.absoluteString
    }
}

class AuthManager: ObservableObject {
    @Published var isAuthenticated: Bool = false
    @Published var currentUser: AuthDataResultModel?

    private var authStateHandler: AuthStateDidChangeListenerHandle?

    init(initialUser: User?) {
        self.currentUser = AuthDataResultModel(user: initialUser)
        self.isAuthenticated = initialUser != nil

        registerAuthStateHandler()
    }

    deinit {
        if let handle = authStateHandler {
            Auth.auth().removeStateDidChangeListener(handle)
        }
    }

    func registerAuthStateHandler() {
        if authStateHandler == nil {
            authStateHandler = Auth.auth().addStateDidChangeListener { _, user in
                DispatchQueue.main.async {
                    self.currentUser = AuthDataResultModel(user: user)
                    self.isAuthenticated = user != nil
                }
            }
        }
    }

    func registerUser(email: String, password: String) async throws -> AuthDataResult {
        return try await Auth.auth().createUser(withEmail: email, password: password)
    }

    func signOut() {
        do {
            try Auth.auth().signOut()
        } catch let signOutError as NSError {
            print("Logout Error: \(signOutError.localizedDescription)")
        }
    }
}
