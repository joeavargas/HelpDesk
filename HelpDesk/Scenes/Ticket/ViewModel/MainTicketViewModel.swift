//
//  MainTicketViewModel.swift
//  HelpDesk
//
//  Created by Joe Vargas on 5/2/24.
//

import Foundation
import Firebase

class MainTicketViewModel: ObservableObject {
    
    
    func signOut() async throws {
        try await AuthService.shared.signOut()
    }
}
