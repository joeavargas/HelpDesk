//
//  MainTicketView.swift
//  HelpDesk
//
//  Created by Joe Vargas on 5/2/24.
//

import SwiftUI

struct MainTicketView: View {
    @StateObject var viewModel = MainTicketViewModel()
    @State private var showMenu = false
    @State private var selectedTab = 0
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("MainTicketView")
            }
        }
        .toolbar(.hidden, for: .tabBar)
        
    }
}

#Preview {
    MainTicketView()
}
