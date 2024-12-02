import SwiftUI

struct PhotoDetailView: View {
    let photo: FlickrPhoto
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                AsyncImage(url: URL(string: photo.media.originalURL)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    ProgressView()
                }
                .frame(maxWidth: .infinity)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(photo.title)
                        .font(.title2)
                        .bold()
                    
                    Text("By \(photo.author)")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("Taken on \(formatDate(photo.dateTaken))")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    if !photo.tags.isEmpty {
                        Text("Tags: \(photo.tags)")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
                .padding()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    } // body
    
    // Helper function to format the date
    private func formatDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .short
        return formatter.string(from: date)
    }
}
