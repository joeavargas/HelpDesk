//
//  Ticket.swift
//  HelpDesk
//
//  Created by Joe Vargas on 5/2/24.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

struct Ticket: Codable, Identifiable, Hashable {
    @DocumentID var ticketId: String?
    let title: String
    let description: String
    let dateCreated: Timestamp
    let dueDate: Date
    let uid: String
}
extension Ticket {
    var id: String {
        return ticketId ?? NSUUID().uuidString
    }
}
