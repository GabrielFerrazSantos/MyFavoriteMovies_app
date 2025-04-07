//
//  NewsListViewData.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 30/03/25.
//

import UIKit

protocol NewsListViewData {
    var data: [NewsListSection]? { get }
    var selectedIndexPath: IndexPath? { get }
    
    func set(tags: [String], news: [NewsListItemModel])
    func filter(news: [NewsListItemModel], indexPath: IndexPath)
    func resetToOriginalData()
}

enum NewsListSection {
    case tags(_ tags: [String])
    case news(_ news: [NewsListItemModel])
}

class NewsListViewDataConcrete: NewsListViewData {
    // MARK: - Properties
    var data: [NewsListSection]?
    var originalData: [NewsListSection]?
    var selectedIndexPath: IndexPath?
    
    // MARK: - Functions
    func set(tags: [String], news: [NewsListItemModel]) {
        data = [
            .tags(tags),
            .news(news)
        ]
        originalData = data
    }
    
    func filter(news: [NewsListItemModel], indexPath: IndexPath) {
        data?.remove(at: 1)
        data?.append(.news(news))
        selectedIndexPath = indexPath
    }
    
    func resetToOriginalData() {
        data = originalData
        selectedIndexPath = nil
    }
}
