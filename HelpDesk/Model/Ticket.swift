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
    @DocumentID var id: String?
    let title: String
    let description: String
    let dateCreated: Timestamp
    let dueDate: Date
    let createdBy: String
    let uid: String
}
