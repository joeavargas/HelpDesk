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
                Button {
                    Task {
                        try await viewModel.signOut()
                    }
                } label: {
                    Text("Sign Out")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.red))
                        .clipShape(
                            RoundedRectangle(cornerRadius: 10)
                        )
                }
                .padding(.vertical)
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
