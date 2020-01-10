//
//  User.swift
//  TrySwiftUI
//
//  Created by Yoshimasa Aoki on 2019/12/26.
//  Copyright © 2019 yoshimasa36g. All rights reserved.
//

import Foundation

protocol UserConvertible {
    func toUser() -> User
}

struct User {
    let name: String
    let gender: String
    let email: String
    let phone: String
    let thumbnailURL: URL?
    let imageURL: URL?
}
