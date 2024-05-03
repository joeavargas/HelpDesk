//
//  SideMenuRowType.swift
//  HelpDesk
//
//  Created by Joe Vargas on 5/3/24.
//

import Foundation

enum SideMenuRowType: Int, CaseIterable {
    case home = 0
    case favorite
    case profile
    
    var title: String {
        switch self {
            
        case .home:
            return "Tickets"
        case .favorite:
            return "Favorite"
        case .profile:
            return "Profile"
        }
    }
    
    var iconName: String {
        switch self {
            
        case .home:
            return "home"
        case .favorite:
            return "favorite"
        case .profile:
            return "profile"
        }
    }
}
