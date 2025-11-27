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
    let name: String?
    let photoUrl: String?

    init(user: User?) {
        self.uid = user?.uid
        self.email = user?.email
        self.photoUrl = user?.photoURL?.absoluteString
        self.name = user?.displayName
    }
}

@MainActor
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
                Task { @MainActor in
                    self.currentUser = AuthDataResultModel(user: user)
                    self.isAuthenticated = user != nil
                }
            }
        }
    }

    func registerUser(email: String, password: String) async throws -> AuthDataResult {
        let resultData = try await Auth.auth().createUser(withEmail: email, password: password)
        return resultData
    }

    func signIn(email: String, password: String) async throws -> AuthDataResult {
        let resultData = try await Auth.auth().signIn(withEmail: email, password: password)
        self.isAuthenticated = true
        self.currentUser = AuthDataResultModel(user: resultData.user)
        return resultData
    }

    func signOut() {
        do {
            try Auth.auth().signOut()
            self.isAuthenticated = false
            self.currentUser = nil
        } catch let signOutError as NSError {
            print("Logout Error: \(signOutError.localizedDescription)")
        }
    }
}
