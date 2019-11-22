//
//  UserData.swift
//  Landmarks
//
//  Created by Yoshimasa Aoki on 2019/11/22.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
