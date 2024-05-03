//
//  SideMenuViewModel.swift
//  HelpDesk
//
//  Created by Joe Vargas on 5/3/24.
//

import Foundation
import Firebase
import Combine

class SideMenuViewModel: ObservableObject {
    @Published var currentUser: User?
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers() {
        UserService.shared.$currentUser.sink { [weak self] user in
            self?.currentUser = user
        }.store(in: &cancellables)
    }
}
