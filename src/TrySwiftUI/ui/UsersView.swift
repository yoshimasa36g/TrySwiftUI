//
//  UsersView.swift
//  TrySwiftUI
//
//  Created by Yoshimasa Aoki on 2019/12/25.
//  Copyright © 2019 yoshimasa36g. All rights reserved.
//

import SwiftUI

struct UsersView: View {
    @EnvironmentObject private var viewModel: UsersViewModel

    var body: some View {
        NavigationView {
            VStack {
                TextField("Search", text: $viewModel.keyword)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                List {
                    ForEach(viewModel.filteredUsers, id: \.name) { user in
                        NavigationLink(destination: UserDetailView(user: user)) {
                            UserSummaryView(user: user)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Random Users"), displayMode: .automatic)
        }
        .onAppear { self.viewModel.fetchUsers() }
    }
}

struct UsersView_Previews: PreviewProvider {
    static var previews: some View {
        UsersView().environmentObject(UsersViewModel())
    }
}
