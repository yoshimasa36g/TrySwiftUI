//
//  UserSummaryView.swift
//  TrySwiftUI
//
//  Created by Yoshimasa Aoki on 2020/01/08.
//  Copyright © 2020 yoshimasa36g. All rights reserved.
//

import SwiftUI

struct UserSummaryView: View {
    var user: User

    var body: some View {
        HStack {
            CircleImage(url: user.thumbnailURL, size: 60)
            VStack(alignment: .leading) {
                Text(user.name)
                Text(user.email)
            }
        }
    }
}

struct UserSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        UserSummaryView(user: User(
            name: "Nicholas Cage",
            gender: "male",
            email: "cage@example.com",
            phone: "09000000000",
            thumbnailURL: URL(string: "https://www.placecage.com/100/100"),
            imageURL: URL(string: "https://www.placecage.com/200/200")))
    }
}
