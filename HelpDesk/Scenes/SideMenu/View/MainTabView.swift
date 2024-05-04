//
//  MainTabView.swift
//  HelpDesk
//
//  Created by Joe Vargas on 5/3/24.
//

import SwiftUI

struct MainTabView: View {
    
    @State var showMenu = false
    @State var selectedTab = 0
    
    var body: some View {
        NavigationStack {
            ZStack {
                TabView(selection: $selectedTab) {
                    MainTicketView()
                        .tag(0)
                    
                    FavoriteView(presentSideMenu: $showMenu)
                        .toolbar(.visible, for: .bottomBar)
                        .tag(1)
                    
                    ProfileView(presentSideMenu: $showMenu)
                        .toolbar(.visible, for: .bottomBar)
                        .tag(2)
                }
                
                SideMenuView(isShowing: $showMenu, selectedTab: $selectedTab)
            }
            .toolbar(showMenu ? .hidden : .visible, for: .navigationBar)
            .toolbar(showMenu ? .hidden : .visible, for: .bottomBar)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        showMenu.toggle()
                    }, label: {
                        Image(systemName: "line.3.horizontal")
                    })
                }
                
                // Only the filter and new ticket buttons should appear in the MainTicketView
                if selectedTab == 0 {
                    ToolbarItem(placement: .bottomBar) {
                        Button(action: {
                            print("DEBUG: filter tickets")
                        }, label: {
                            Image(systemName: "line.3.horizontal.decrease.circle")
                        })
                    }
                    
                    ToolbarItem(placement: .bottomBar) {
                        Button(action: {
                            print("DEBUG: create ticket")
                        }, label: {
                            Image(systemName: "plus")
                        })
                    }
                }
            }
        }
    }
}

#Preview {
    MainTabView()
}
