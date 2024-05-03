//
//  ProfileView.swift
//  HelpDesk
//
//  Created by Joe Vargas on 5/3/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
    @Binding var presentSideMenu: Bool
    
    var body: some View {
        NavigationStack {
            VStack {
                if let currentUser = viewModel.currentUser {
                    Text("My name is \(currentUser.displayName) and \(currentUser.isAgent ? "yes" : "no"), I am\(currentUser.isAgent ? "" : "not") an agent")
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Sidemenu") {
                        presentSideMenu.toggle()
                    }
                    
                }
            }
        }
    }
}

#Preview {
    ProfileView(presentSideMenu: .constant(true))
}

/*
 @DocumentID var uid: String?
 let firstName: String
 let lastName: String
 let isAgent: Bool
 */
