//
//  MainTicketView.swift
//  HelpDesk
//
//  Created by Joe Vargas on 5/2/24.
//

import SwiftUI

struct MainTicketView: View {
    @StateObject var viewModel = MainTicketViewModel()
    
    var body: some View {
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
}

#Preview {
    MainTicketView()
}
