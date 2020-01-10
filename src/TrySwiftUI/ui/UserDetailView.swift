//
//  UserDetailView.swift
//  TrySwiftUI
//
//  Created by Yoshimasa Aoki on 2020/01/10.
//  Copyright © 2020 yoshimasa36g. All rights reserved.
//

import SwiftUI

struct UserDetailView: View {
    var user: User

    var body: some View {
        VStack {
            CircleImage(url: user.imageURL, size: 200)
            Text(user.name).font(.title)
            HStack {
                Image(systemName: "envelope")
                Text(user.email)
            }
            HStack {
                Image(systemName: "phone")
                Text(user.phone)
            }
        }
    }
}

struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailView(user: User(
            name: "Nicholas Cage",
            gender: "male",
            email: "cage@example.com",
            phone: "09000000000",
            thumbnailURL: URL(string: "https://www.placecage.com/100/100"),
            imageURL: URL(string: "https://www.placecage.com/200/200")))
    }
}
