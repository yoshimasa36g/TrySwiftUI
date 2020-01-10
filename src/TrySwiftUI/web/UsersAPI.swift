//
//  UsersAPI.swift
//  TrySwiftUI
//
//  Created by Yoshimasa Aoki on 2019/12/26.
//  Copyright © 2019 yoshimasa36g. All rights reserved.
//

import Foundation
import Alamofire

protocol UsersAPI {
    func fetchUsers(onSuccess: @escaping ([UserOnAPI]) -> Void,
                    onFailure: @escaping (AFError) -> Void)
}

struct UserDownloader: UsersAPI {
    private static let endpoint = "https://randomuser.me/api/"

    func fetchUsers(onSuccess: @escaping ([UserOnAPI]) -> Void,
                    onFailure: @escaping (AFError) -> Void) {
        AF.request("\(UserDownloader.endpoint)?results=20")
            .responseDecodable(of: UsersAPIResponse.self) { response in
                switch response.result {
                case .success(let users):
                    onSuccess(users.results)
                case .failure(let error):
                    onFailure(error)
                }
            }
    }
}
