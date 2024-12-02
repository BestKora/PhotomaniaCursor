import Foundation

struct FlickrFeedResult: Codable {
    let items: [FlickrPhoto]
}

struct FlickrPhoto: Codable, Identifiable {
    let title: String
    let link: String
    let media: Media
    let dateTaken: Date
    let description: String
    let published: Date
    let author: String
    let tags: String
    
    // Computed property for ID
    var id: String { link }
    
    enum CodingKeys: String, CodingKey {
        case title, link, media
        case dateTaken = "date_taken"
        case description, published, author, tags
    }
}

struct Media: Codable {
    let m: String
    
    var originalURL: String {
        m.replacingOccurrences(of: "_m.", with: ".")
    }
} 
