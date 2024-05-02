//
//  Ticket.swift
//  HelpDesk
//
//  Created by Joe Vargas on 5/2/24.
//

import Foundation

struct Ticket: Codable {
    var ticketId = UUID().uuidString
    let title: String
    let subTitle: String
    let description: String
    let dateCreated: Date
    let dueDate: Date?
    let createdBy: User
}
