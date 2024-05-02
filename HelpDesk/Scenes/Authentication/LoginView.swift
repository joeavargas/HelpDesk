//
//  LoginView.swift
//  HelpDesk
//
//  Created by Joe Vargas on 5/2/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack {
            
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
                    TextField("Enter your email", text: $email)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .clipShape(
                            RoundedRectangle(cornerRadius: 10)
                        )
                        .padding(.horizontal, 24)
                    SecureField("Enter your password", text: $password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .clipShape(
                            RoundedRectangle(cornerRadius: 10)
                        )
                        .padding(.horizontal, 24)
                }
                
                // Forgot password
                
                Button {
                    print("DEBUG: handle forgot password")
                } label: {
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                // Login button
                Button {
                    print("DEBUG: handle login")
                } label: {
                    Text("Login")
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
                
                NavigationLink {
                    Text("Sign-up View")
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?")
                        
                        Text("Sign up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                }
                .padding(.vertical)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
