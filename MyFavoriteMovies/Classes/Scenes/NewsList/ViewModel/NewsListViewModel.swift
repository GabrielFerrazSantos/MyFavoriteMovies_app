//
//  NewsListViewModel.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 25/03/25.
//

import UIKit

protocol NewsListViewModel {
    var state: Bindable<NewsListViewModelState> { get }
    var viewData: NewsListViewData { get }
    
    func fetchNewsList()
    func filter(tag: String, indexPath: IndexPath)
    func removeFilter()
}

enum NewsListViewModelState {
    case initial
    case loading
    case success
    case failure
    case filter
}

class NewsListViewModelConcrete: NewsListViewModel {
    // MARK: - Properties
    var state: Bindable<NewsListViewModelState> = .init(.initial)
    var viewData: NewsListViewData = NewsListViewDataConcrete()
    var service: NewsListService = NewsListServiceConcrete()
    
    // MARK: - Functions
    func fetchNewsList() {
        state.value = .loading
        
        service.fetchNewsListTags { [weak self] tags in
            self?.service.fetchNewsList { [weak self] news in
                self?.viewData.set(tags: tags, news: news)
                self?.state.value = .success
            } failure: { [weak self] _ in
                self?.state.value = .failure
            }
        } failure: { [weak self] _ in
            self?.state.value = .failure
        }
    }
    
    func filter(tag: String, indexPath: IndexPath) {
        viewData.data?.forEach { item in
            if case .news(let news) = item {
                let newsFiltered = news.filter { news in
                    news.tags.contains(tag)
                }
                
                viewData.filter(news: newsFiltered, indexPath: indexPath)
            }
        }
        
        state.value = .filter
    }
    
    func removeFilter() {
        viewData.resetToOriginalData()
        state.value = .filter
    }
}
