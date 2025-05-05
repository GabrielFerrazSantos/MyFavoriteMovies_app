//
//  FactoryModel.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 01/05/25.
//

import Foundation

struct FactoryModel: Codable {
    let sections: [FactorySectionModel]
}

struct FactorySectionModel: Codable {
    let type: FactorySectionType
    let data: [FactorySectionData]
}

enum FactorySectionType: String, Codable {
    case article
    case commentaries
    case reviews
}

enum FactorySectionData: Codable {
    case title(String)
    case headline(String)
    case paragraph(String)
    case subtitle(String)
    case image(String)
    case imageCarousel([String])
    case writeReview
    case review(FactoryReview)
    case writeCommentary
    case commentary(FactoryCommentary)
    
    enum CodingKeys: String, CodingKey {
        case type
        case value
    }
    
    enum FactorySectionDataType: String, Codable {
        case title
        case headline
        case paragraph
        case subtitle
        case image
        case imageCarrosel
        case writeReview
        case review
        case writeCommentary
        case commentary
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let type = try container.decode(FactorySectionDataType.self, forKey: .type)
        
        switch type {
        case .title:
            let value = try container.decode(String.self, forKey: .value)
            self = .title(value)
            
        case .headline:
            let value = try container.decode(String.self, forKey: .value)
            self = .headline(value)
            
        case .paragraph:
            let value = try container.decode(String.self, forKey: .value)
            self = .paragraph(value)
            
        case .subtitle:
            let value = try container.decode(String.self, forKey: .value)
            self = .subtitle(value)
            
        case .image:
            let value = try container.decode(String.self, forKey: .value)
            self = .image(value)
            
        case .imageCarrosel:
            let value = try container.decode([String].self, forKey: .value)
            self = .imageCarousel(value)
            
        case .writeReview:
            self = .writeReview
        
        case .review:
            let value = try container.decode(FactoryReview.self, forKey: .value)
            self = .review(value)
            
        case .commentary:
            let value = try container.decode(FactoryCommentary.self, forKey: .value)
            self = .commentary(value)
            
        case .writeCommentary:
            self = .writeCommentary
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        switch self {
        case .title(let value):
            try container.encode(FactorySectionDataType.title, forKey: .type)
            try container.encode(value, forKey: .value)
            
        case .headline(let value):
            try container.encode(FactorySectionDataType.headline, forKey: .type)
            try container.encode(value, forKey: .value)
            
        case .paragraph(let value):
            try container.encode(FactorySectionDataType.paragraph, forKey: .type)
            try container.encode(value, forKey: .value)
            
        case .subtitle(let value):
            try container.encode(FactorySectionDataType.subtitle, forKey: .type)
            try container.encode(value, forKey: .value)
            
        case .image(let value):
            try container.encode(FactorySectionDataType.image, forKey: .type)
            try container.encode(value, forKey: .value)
            
        case .imageCarousel(let value):
            try container.encode(FactorySectionDataType.imageCarrosel, forKey: .type)
            try container.encode(value, forKey: .value)
            
        case .writeReview:
            try container.encode(FactorySectionDataType.writeReview, forKey: .type)
            
        case .review(let value):
            try container.encode(FactorySectionDataType.review, forKey: .type)
            try container.encode(value, forKey: .value)
            
        case .commentary(let value):
            try container.encode(FactorySectionDataType.commentary, forKey: .type)
            try container.encode(value, forKey: .value)
            
        case .writeCommentary:
            try container.encode(FactorySectionDataType.writeCommentary, forKey: .type)
        }
    }
}

struct FactoryReview: Codable {
    let avatar: String?
    let username: String
    let score: Int
    let review: String
}

struct FactoryCommentary: Codable {
    let avatar: String?
    let username: String
    let commentary: String
    let date: String
}
