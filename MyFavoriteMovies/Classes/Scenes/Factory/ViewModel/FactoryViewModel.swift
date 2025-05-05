//
//  FactoryViewModel.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 01/05/25.
//

protocol FactoryViewModel {
    var state: Bindable<FactoryViewModelState> { get }
    var screenType: FactoryScreenType { get}
    var data: FactoryModel? { get }

    func fetchData()
    func sendReview(review: String, score: Int)
    func sendCommentary(commentary: String)
}

enum FactoryViewModelState {
    case initial
    case loading
    case success
    case failure
    case reloadReviewOrCommentary
}

class FactoryViewModelConcrete: FactoryViewModel {
    // MARK: - Properties
    var state: Bindable<FactoryViewModelState> = .init(.initial)
    var screenType: FactoryScreenType
    var service: FactoryService = FactoryServiceConcrete()
    var data: FactoryModel?
    
    // MARK: - Initializers
    init(screenType: FactoryScreenType) {
        self.screenType = screenType
    }
    
    // MARK: - Functions
    func fetchData() {
        service.fetchData(screenType: screenType) { [weak self] result in
            self?.data = result
            self?.state.value = .success
        } failure: { [weak self] _ in
            self?.state.value = .failure
        }
    }
    
    func sendReview(review: String, score: Int) {
        guard case .movie(let id) = screenType else { return }
        
        service.sendReview(movieId: id, review: review, score: score) { [weak self] in
            guard let self = self else { return }
            
            self.service.fetchData(screenType: self.screenType) { [weak self] result in
                self?.data = result
                self?.state.value = .reloadReviewOrCommentary
            } failure: { [weak self] _ in
                self?.state.value = .failure
            }
        } failure: { _ in }
    }
    
    func sendCommentary(commentary: String) {
        guard case .news(let id) = screenType else { return }
        
        service.sendCommentary(newsId: id, commentary: commentary) { [weak self] in
            guard let self = self else { return }
            
            self.service.fetchData(screenType: self.screenType) { [weak self] result in
                self?.data = result
                self?.state.value = .reloadReviewOrCommentary
            } failure: { [weak self] _ in
                self?.state.value = .failure
            }
        } failure: { _ in }
    }
}
