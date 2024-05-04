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
    
    var body: some View {
        List {
            Section {
                TextField("Enter a brief desciption", text: $titleText)
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
        }
    }
}

#Preview {
    CreateTicketView()
}
