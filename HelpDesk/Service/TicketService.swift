//
//  TicketService.swift
//  HelpDesk
//
//  Created by Joe Vargas on 5/6/24.
//

import Foundation
import Firebase

struct TicketService {
    static let ticketsCollection = Firestore.firestore().collection("tickets")
    
    static func submitTicket(ticketTitle: String, description: String, dueDate: Date) {
        guard let currentUser = UserService.shared.currentUser else { return }
        let ticketId = UUID().uuidString
        
        let ticketsRef = ticketsCollection.document(ticketId)
        
        let ticket = Ticket(ticketId: ticketId,
                            title: ticketTitle,
                            description: description,
                            dateCreated: Timestamp(),
                            dueDate: dueDate, 
                            createdBy: currentUser.displayName,
                            uid: currentUser.id )
        
        guard let ticketData = try? Firestore.Encoder().encode(ticket) else { return }
        
        ticketsRef.setData(ticketData)
    }
}
