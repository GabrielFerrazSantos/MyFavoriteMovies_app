//
//  NewsListService.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 25/03/25.
//

import UIKit

protocol NewsListService {
    func fetchNewsListTags(
        success: @escaping ([String]) -> Void,
        failure: @escaping (Error) -> Void
    )
    
    func fetchNewsList(
        success: @escaping ([NewsListItemModel]) -> Void,
        failure: @escaping (Error) -> Void
    )
}

class NewsListServiceConcrete: Service, NewsListService {
    // MARK: - Functions
    func fetchNewsListTags(
        success: @escaping ([String]) -> Void,
        failure: @escaping (Error) -> Void
    ) {
        let request = TagsRequest()
        
        makeRequest(request: request) { (result: TagsModel) in
            success(result.names)
        } failure: { error in
            failure(error)
        }
    }
    
    func fetchNewsList(
        success: @escaping ([NewsListItemModel]) -> Void,
        failure: @escaping (Error) -> Void
    ) {
        let request = NewsListRequest()
        
        makeRequest(request: request) { (result: [NewsListItemModel]) in
            success(result)
        } failure: { error in
            failure(error)
        }
    }
}
