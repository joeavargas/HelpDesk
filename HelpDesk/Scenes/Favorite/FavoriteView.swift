//
//  FavoriteView.swift
//  HelpDesk
//
//  Created by Joe Vargas on 5/3/24.
//

import SwiftUI

struct FavoriteView: View {
    @Binding var presentSideMenu: Bool
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("FavoriteView")
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Sidemenu") {
                        presentSideMenu.toggle()
                    }
                    
                }
            }
        }
        .toolbar(.hidden, for: .tabBar)
    }
}

#Preview {
    FavoriteView(presentSideMenu: .constant(true))
}
