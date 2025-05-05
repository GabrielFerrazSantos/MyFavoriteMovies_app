//
//  FactoryService.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 01/05/25.
//

import Foundation

protocol FactoryService {
    func fetchData(
        screenType: FactoryScreenType,
        success: @escaping (FactoryModel) -> Void,
        failure: @escaping (Error) -> Void
    )
    
    func sendReview(
        movieId: Int,
        review: String,
        score: Int,
        success: @escaping () -> Void,
        failure: @escaping (Error) -> Void
    )
    
    func sendCommentary(
        newsId: Int,
        commentary: String,
        success: @escaping () -> Void,
        failure: @escaping (Error) -> Void
    )
}

class FactoryServiceConcrete: Service, FactoryService {
    func fetchData(
        screenType: FactoryScreenType,
        success: @escaping (FactoryModel) -> Void,
        failure: @escaping (Error) -> Void
    ) {
        let request = FactoryRequest(screenType: screenType)
        
        makeRequest(request: request, success: success, failure: failure)
    }
    
    func sendReview(
        movieId: Int,
        review: String,
        score: Int,
        success: @escaping () -> Void,
        failure: @escaping (Error) -> Void
    ) {
        let request = ReviewRequest(movieId: movieId, review: review, score: score)
        
        makeRequestWithBody(request: request) { (result: Empty) in
            success()
        } failure: { error in
            failure(error)
        }
    }
    
    func sendCommentary(
        newsId: Int,
        commentary: String,
        success: @escaping () -> Void,
        failure: @escaping (Error) -> Void
    ) {
        let request = CommentaryRequest(newsId: newsId, commentary: commentary)
        
        makeRequestWithBody(request: request) { (result: Empty) in
            success()
        } failure: { error in
            failure(error)
        }
    }
}
