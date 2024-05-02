//
//  RegistrationView.swift
//  HelpDesk
//
//  Created by Joe Vargas on 5/2/24.
//

import SwiftUI

struct RegistrationView: View {
    @Environment(\.dismiss) var dismiss
    @StateObject var viewModel = RegistrationViewModel()
    
    var body: some View {
        VStack {
            Spacer()
            // Logo Image
            Image(systemName: "phone.bubble")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .padding()
            
            // TextFields
            VStack(spacing: 12) {
                TextField("Enter your email", text: $viewModel.email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .clipShape(
                        RoundedRectangle(cornerRadius: 10)
                    )
                    .padding(.horizontal, 24)
                
                TextField("First Name", text: $viewModel.firstName)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .clipShape(
                        RoundedRectangle(cornerRadius: 10)
                    )
                    .padding(.horizontal, 24)
                
                TextField("Last Name", text: $viewModel.lastName)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .clipShape(
                        RoundedRectangle(cornerRadius: 10)
                    )
                    .padding(.horizontal, 24)
                
                SecureField("Enter your password", text: $viewModel.password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .clipShape(
                        RoundedRectangle(cornerRadius: 10)
                    )
                    .padding(.horizontal, 24)
            }
            
            Button {
                Task {
                    try await viewModel.createUser()
                }
            } label: {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .clipShape(
                        RoundedRectangle(cornerRadius: 10)
                    )
            }
            .padding(.vertical)
            
            HStack {
                Rectangle()
                    .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                
                Text("OR")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Rectangle()
                    .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
            }
            .padding(.top, 8)
            
            
            // Sign-up link
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 3) {
                    Text("Already have an account?")
                    
                    Text("Sign in")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
            }
            .padding(.vertical)
            
            Spacer()
        }
    }
}

#Preview {
    RegistrationView()
}
