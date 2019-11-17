//
//  CircleImage.swift
//  TrySwiftUI
//
//  Created by Yoshimasa Aoki on 2019/11/17.
//  Copyright © 2019 yoshimasa36g. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtle_rock")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
