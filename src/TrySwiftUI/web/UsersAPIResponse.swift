//
//  UsersAPIResponse.swift
//  TrySwiftUI
//
//  Created by Yoshimasa Aoki on 2019/12/26.
//  Copyright © 2019 yoshimasa36g. All rights reserved.
//

import Foundation

struct UsersAPIResponse: Decodable {
    let results: [UserOnAPI]
}
