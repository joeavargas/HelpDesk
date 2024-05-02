//
//  ContentView.swift
//  HelpDesk
//
//  Created by Joe Vargas on 5/2/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                MainTicketView()
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
