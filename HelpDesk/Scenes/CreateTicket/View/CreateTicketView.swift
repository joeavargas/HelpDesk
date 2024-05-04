//
//  CreateTicketView.swift
//  HelpDesk
//
//  Created by Joe Vargas on 5/4/24.
//

import SwiftUI

struct CreateTicketView: View {
    @State private var titleText = ""
    @State private var ticketDescription = ""
    @State private var dueDate = Date.now
    @State private var isSubmitButtonEnabled: Bool = false
    
    var body: some View {
        List {
            Section {
                TextField("Enter a brief desciption", text: $titleText)
                    .onChange(of: titleText) { _, newValue in
                        updateSubmitButtonState()
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
                TextField("Enter description", text: $ticketDescription)
                    .onChange(of: ticketDescription) { _, newValue in
                        updateSubmitButtonState()
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
                DatePicker("Due Date", selection: $dueDate, in: Date.now...)
            } header: {
                HStack {
                    Text("(optional)")
                }
                .font(.subheadline)
            }
            
            Section {
                Button(action: {}){
                    Button(action: {
                        print("DEBUG: submit ticket")
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
                .disabled(!isSubmitButtonEnabled)
            }
        }
    }
    
    private func updateSubmitButtonState() {
        isSubmitButtonEnabled = !titleText.isEmpty && !ticketDescription.isEmpty
    }
}

#Preview {
    CreateTicketView()
}
