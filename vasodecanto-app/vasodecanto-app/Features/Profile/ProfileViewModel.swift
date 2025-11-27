//
//  ProfileViewModel.swift
//  vasodecanto-app
//
//  Created by Paulo Roberto on 30/09/25.
//

import SwiftUI

@MainActor
class ProfileViewModel: ObservableObject {
    private let authManager: AuthManager

    init(authManager: AuthManager) {
        self.authManager = authManager
    }

    func logOut() throws {
        authManager.signOut()
    }
}
