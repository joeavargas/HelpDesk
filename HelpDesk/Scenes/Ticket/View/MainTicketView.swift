//
//  MainTicketView.swift
//  HelpDesk
//
//  Created by Joe Vargas on 5/2/24.
//

import SwiftUI

struct MainTicketView: View {
    @StateObject var viewModel = MainTicketViewModel()
    @Binding var presentSideMenu: Bool
    @State var selectedSideMenuTab = 0
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("MainTicketView")
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
    MainTicketView(presentSideMenu: .constant(true))
}
