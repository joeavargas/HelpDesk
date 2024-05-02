//
//  User.swift
//  HelpDesk
//
//  Created by Joe Vargas on 5/2/24.
//

import Foundation

struct User: Codable {
    var userId = UUID().uuidString
    let firstName: String
    let lastName: String
    var displayName: String {
        return firstName + " " + lastName
    }
    let isAgent: Bool
}
