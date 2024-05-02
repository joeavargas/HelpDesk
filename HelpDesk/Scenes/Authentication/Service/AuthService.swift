//
//  AuthService.swift
//  HelpDesk
//
//  Created by Joe Vargas on 5/2/24.
//

import Foundation
import Firebase

class AuthService {
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        self.userSession = Auth.auth().currentUser
        
        print("DEBUG: user session id is \(userSession?.uid)")
    }
    
    func login(withEmail email: String, password: String) async throws {
        
    }
    
    func createUser(withEmail email: String, firstName: String, lastName: String,  password: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
        } catch {
            print("DEBUG: Failed to create user with error: \(error.localizedDescription)")
        }
    }
}
