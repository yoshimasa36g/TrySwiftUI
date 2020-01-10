/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view that clips an image to a circle and adds a stroke and shadow.
*/

import SwiftUI
import SDWebImage

struct CircleImage: View {
    var url: URL?
    var size: CGFloat

    @State private var image: Image = Image(systemName: "person.circle")

    var body: some View {
        image
            .resizable()
            .frame(width: size, height: size, alignment: .center)
            .scaledToFit()
            .clipShape(Circle())
            .shadow(radius: 10)
            .onAppear { self.fetchImage() }
    }

    private func fetchImage() {
        SDWebImageDownloader.shared.downloadImage(with: url) { image, _, _, finished in
            if finished, let uiImage = image {
                self.image = Image(uiImage: uiImage)
            }
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(
            url: URL(string: "https://www.placecage.com/c/100/100"),
            size: 60)
    }
}
