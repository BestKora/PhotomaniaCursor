import SwiftUI

struct PhotoGridItem: View {
    let photo: FlickrPhoto
    
    var body: some View {
        AsyncImage(url: URL(string: photo.media.m)) { image in
            image
             //   .resizable()
             //   .scaledToFill()
             //   .frame(width: 108, height: 108)
                .resizable()
              //  .aspectRatio(contentMode: .fill)
                .scaledToFill()
                .frame(minWidth: 0,  maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity)
                .clipped()
                .aspectRatio(1, contentMode: .fit)
                .padding(2)
        } placeholder: {
            ProgressView()
                .frame(width: 108, height: 108)
                .background(Color.gray.opacity(0.1))
        }
        .clipped()
        .contentShape(Rectangle())
    }
} 
