//
//  MainTabbedView.swift
//  HelpDesk
//
//  Created by Joe Vargas on 5/3/24.
//

import SwiftUI

struct MainTabbedView: View {
    
    @State var presentSideMenu = false
    @State var selectedSideMenuTab = 0
    
    var body: some View {
        ZStack {
            TabView(selection: $selectedSideMenuTab) {
                MainTicketView(presentSideMenu: $presentSideMenu)
                    .tag(0)
                
                FavoriteView(presentSideMenu: $presentSideMenu)
                    .tag(1)
                
                ProfileView(presentSideMenu: $presentSideMenu)
                    .tag(2)
            }
            
            SideMenu(isShowing: $presentSideMenu,
                     content: AnyView(SideMenuView(selectedSideMenuTab: $selectedSideMenuTab, presentSideMenu: $presentSideMenu)))
        }
    }
}

#Preview {
    MainTabbedView()
}
