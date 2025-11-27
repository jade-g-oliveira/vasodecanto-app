import Foundation
import FirebaseAuth

@MainActor
class SigninViewModel: ObservableObject {
    private let authManager: AuthManager

    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage: String?    // <-- ADICIONADO

    init(authManager: AuthManager) {
        self.authManager = authManager
    }

    func logIn() {
        errorMessage = nil    // Limpa mensagem antiga
        Task {
            do {
                let result = try await authManager.signIn(email: email, password: password)
                authManager.currentUser = AuthDataResultModel(user: result.user)
                print("User successfully logged In")
            } catch {
                errorMessage = loginErrorMessage(error)
                print("Login Error \(error)")
            }
        }
    }

    private func loginErrorMessage(_ error: Error) -> String {
        let nsError = error as NSError
        if nsError.domain == AuthErrors.domain,
           let code = AuthErrorCode(rawValue: nsError.code) {
            switch code {
            case .wrongPassword, .invalidEmail, .userNotFound:
                return "Email ou senha incorretos. Tente novamente."
            default:
                return "Email ou senha incorretos. Tente novamente."
            }
        }
        return "Ocorreu um erro inesperado. Tente novamente."
    }
}
