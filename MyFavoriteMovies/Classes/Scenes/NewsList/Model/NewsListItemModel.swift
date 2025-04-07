//
//  NewsListItemModel.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 25/03/25.
//

struct NewsListItemModel: Codable {
    // MARK: - Properties
    let id: Int
    let title: String
    let description: String
    let image: String
    let date: String
    let tags: [String]
}
