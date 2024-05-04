//
//  SideMenuRowType.swift
//  HelpDesk
//
//  Created by Joe Vargas on 5/3/24.
//

import Foundation

enum SideMenuOptionModel: Int, CaseIterable {
    case tickets = 0
    case favorite
    case profile
    
    var title: String {
        switch self {
            
        case .tickets:
            return "Tickets"
        case .favorite:
            return "Favorite"
        case .profile:
            return "Profile"
        }
    }
    
    var iconName: String {
        switch self {
            
        case .tickets:
            return "ticket.fill"
        case .favorite:
            return "heart.fill"
        case .profile:
            return "person.circle.fill"
        }
    }
}

extension SideMenuOptionModel: Identifiable {
    var id: Int { return self.rawValue } 
}
