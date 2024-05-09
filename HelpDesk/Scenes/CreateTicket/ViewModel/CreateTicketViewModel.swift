//
//  CreateTicketViewModel.swift
//  HelpDesk
//
//  Created by Joe Vargas on 5/6/24.
//

import Foundation

class CreateTicketViewModel: ObservableObject {
    @Published var ticketTitle = ""
    @Published var ticketDescription = ""
    @Published var dueDate: Date = .threeDaysFromNow
    
    @Published var updateButtonState: Bool = false
    
    func submitTicket() {
        TicketService.submitTicket(ticketTitle: ticketTitle, description: ticketDescription, dueDate: dueDate)
    }
    
    func updateSubmitButtonState() {
        updateButtonState = !ticketTitle.isEmpty && !ticketDescription.isEmpty
    }
}
