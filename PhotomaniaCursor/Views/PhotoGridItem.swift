import SwiftUI

struct PhotoGridItem: View {
    let photo: FlickrPhoto
    
    var body: some View {
        AsyncImage(url: URL(string: photo.media.m)) { image in
            image
                .resizable()
                .scaledToFill()
                .frame(width: 108, height: 108)
        } placeholder: {
            ProgressView()
                .frame(width: 108, height: 108)
                .background(Color.gray.opacity(0.1))
        }
        .clipped()
        .contentShape(Rectangle())
    }
} 