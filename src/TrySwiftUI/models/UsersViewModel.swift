//
//  UsersViewModel.swift
//  TrySwiftUI
//
//  Created by Yoshimasa Aoki on 2020/01/09.
//  Copyright © 2020 yoshimasa36g. All rights reserved.
//

import SwiftUI

final class UsersViewModel: ObservableObject {
    @Published var keyword: String = "" {
        didSet {
            if keyword.isEmpty {
                filteredUsers = users
                return
            }
            filteredUsers = users.filter { $0.name.contains(keyword)}
        }
    }
    @Published var filteredUsers = [User]()

    private var users = [User]()

    private let api: UsersAPI = UserDownloader()

    func fetchUsers() {
        api.fetchUsers(
            onSuccess: { [weak self] in self?.store($0) },
            onFailure: { print($0.localizedDescription) })
    }

    private func store(_ usersOnAPI: [UserOnAPI]) {
        users = usersOnAPI.map { $0.toUser() }
        filteredUsers = users
    }
}
