//
//  AuthService.swift
//  HelpDesk
//
//  Created by Joe Vargas on 5/2/24.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

@MainActor
class AuthService {
    @Published var userSession: FirebaseAuth.User?
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
        Task { try await UserService.shared.fetchCurrentUser() }
        print("DEBUG: user session id is \(userSession?.uid)")
    }
    
    func login(withEmail email: String, password: String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
        } catch {
            print("DEBUG: Failed to log in user with error: \(error.localizedDescription)")
        }
    }
    
    func createUser(withEmail email: String, firstName: String, lastName: String,  password: String, isAgent: Bool) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            try await self.uploadUserData(email: email, firstName: firstName, lastName: lastName, id: result.user.uid, isAgent: isAgent)
        } catch {
            print("DEBUG: Failed to create user with error: \(error.localizedDescription)")
        }
    }
    
    func signOut() {
        do {
            try Auth.auth().signOut() // signs out from backend
            self.userSession = nil // updates routing logic
        } catch {
            print("DEBUG: Failed to sign out with error \(error.localizedDescription)")
        }
    }
    
    private func uploadUserData(email: String, firstName: String, lastName: String, id: String, isAgent: Bool) async throws {
        let user = User(firstName: firstName, lastName: lastName, isAgent: isAgent)
        guard let encodedUser = try? Firestore.Encoder().encode(user) else { return }
        
        try await Firestore.firestore().collection("users").document(id).setData(encodedUser)
    }
}
