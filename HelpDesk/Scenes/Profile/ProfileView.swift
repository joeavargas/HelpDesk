//
//  ProfileView.swift
//  HelpDesk
//
//  Created by Joe Vargas on 5/3/24.
//

import SwiftUI

struct ProfileView: View {
    @Binding var presentSideMenu: Bool
    var body: some View {
        NavigationStack {
            VStack {
                Text("ProfileView")
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
