//
//  PageView.swift
//  Landmarks
//
//  Created by Yoshimasa Aoki on 2019/12/04.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct PageView<Page: View>: View {
    var viewControllers: [UIHostingController<Page>]
    @State var currentPage = 0

    init(_ views: [Page]) {
        viewControllers = views.map { UIHostingController(rootView: $0) }
    }

    var body: some View {
        VStack {
            PageViewController(
                controllers: self.viewControllers,
                currentPage: $currentPage)
            Text("Current Page: \(currentPage)")
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(features.map { FeatureCard(landmark: $0) })
            .aspectRatio(3/2, contentMode: .fit)
    }
}
