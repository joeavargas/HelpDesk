//
//  User.swift
//  HelpDesk
//
//  Created by Joe Vargas on 5/2/24.
//

import Foundation
import FirebaseFirestoreSwift

struct User: Codable, Identifiable, Hashable {
    @DocumentID var uid: String?
    let firstName: String
    let lastName: String
    let isAgent: Bool
}

extension User {
    
    var id: String {
        return uid ?? NSUUID().uuidString
    }
    
    var displayName: String {
        return firstName + " " + lastName
    }
}
