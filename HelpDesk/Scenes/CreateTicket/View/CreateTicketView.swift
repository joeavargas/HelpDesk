//
//  CreateTicketView.swift
//  HelpDesk
//
//  Created by Joe Vargas on 5/4/24.
//

import SwiftUI

struct CreateTicketView: View {
    @Environment(\.dismiss) var dismiss
    @StateObject var viewModel = CreateTicketViewModel()
    @State private var isSubmitButtonEnabled: Bool = false
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    TextField("Enter a brief desciption", text: $viewModel.ticketTitle)
                        .onChange(of: viewModel.ticketTitle) { _, newValue in
                            viewModel.updateSubmitButtonState()
                        }
                } header: {
                    HStack {
                        Text("Title")
                        Text("*")
                            .foregroundStyle(.red)
                    }
                    .font(.subheadline)
                }
                
                Section {
                    TextField("Enter description", text: $viewModel.ticketDescription)
                        .onChange(of: viewModel.ticketDescription) { _, newValue in
                            viewModel.updateSubmitButtonState()
                        }
                } header: {
                    HStack {
                        Text("Description")
                        Text("*")
                            .foregroundStyle(.red)
                    }
                    .font(.subheadline)
                }
                
                Section {
                    DatePicker("Due Date", selection: $viewModel.dueDate, in: Date.now...)
                } header: {
                    HStack {
                        Text("(optional)")
                    }
                    .font(.subheadline)
                }
                
                Section {
                    Button(action: {}){
                        Button(action: {
                            viewModel.submitTicket()
                            dismiss()
                        }, label: {
                            Text("Submit")
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity)
                                .frame(height: 30)

                        })
                        .background(.green)
                        .buttonStyle(.bordered)
                        
                    }
                    .buttonStyle(.plain)
                    .listRowBackground(EmptyView())
                    .listRowInsets(EdgeInsets())
                    .disabled(!viewModel.updateButtonState)
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
        }
        }
    }
}

#Preview {
    CreateTicketView()
}
