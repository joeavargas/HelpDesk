//
//  MainTabbedView.swift
//  HelpDesk
//
//  Created by Joe Vargas on 5/3/24.
//

import SwiftUI

struct MainTabbedView: View {
    
    @State var showMenu = false
    @State var selectedTab = 0
    
    var body: some View {
        NavigationStack {
            ZStack {
                TabView(selection: $selectedTab) {
                    MainTicketView()
                        .tag(0)
                    
                    FavoriteView(presentSideMenu: $showMenu)
                        .tag(1)
                    
                    ProfileView(presentSideMenu: $showMenu)
                        .tag(2)
                }
                
                SideMenuView(isShowing: $showMenu, selectedTab: $selectedTab)
            }
            .toolbar(showMenu ? .hidden : .visible, for: .navigationBar)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        showMenu.toggle()
                    }, label: {
                        Image(systemName: "line.3.horizontal")
                    })
                }
            }
        }
    }
}

#Preview {
    MainTabbedView()
}
