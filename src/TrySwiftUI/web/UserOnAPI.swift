//
//  UserOnAPI.swift
//  TrySwiftUI
//
//  Created by Yoshimasa Aoki on 2019/12/26.
//  Copyright © 2019 yoshimasa36g. All rights reserved.
//

import Foundation

struct UserOnAPI: Decodable {
    let gender: String
    let name: UserName
    let email: String
    let phone: String
    let picture: UserPicture
}

struct UserName: Decodable {
    let title: String
    let first: String
    let last: String

    var fullName: String {
        "\(title) \(first) \(last)"
    }
}

struct UserPicture: Decodable {
    let large: String
    let medium: String
    let thumbnail: String
}

extension UserOnAPI: UserConvertible {
    func toUser() -> User {
        return User(name: name.fullName,
                    gender: gender,
                    email: email,
                    phone: phone,
                    thumbnailURL: URL(string: picture.thumbnail),
                    imageURL: URL(string: picture.medium))
    }
}
