//
//  ProfileViewModel.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 24/05/25.
//

protocol ProfileViewModel {
    var state: Bindable<ProfileViewModelState> { get }
    var viewData: ProfileViewData { get }
    
    func fetchRecentActivities()
}

enum ProfileViewModelState {
    case initial
    case loading
    case success
    case failure
}

class ProfileViewModelConcrete: ProfileViewModel {
    // MARK: - Properties
    var state: Bindable<ProfileViewModelState> = .init(.initial)
    var viewData: ProfileViewData = ProfileViewDataConcrete()
    var service: ProfileService = ProfileServiceConcrete()
    
    // MARK: - Functions
    func fetchRecentActivities() {
        state.value = .loading
        
        service.fetchRecentActivities { [weak self] result in
            self?.viewData.set(recentActivities: result)
            self?.state.value = .success
        } failure: { [weak self] _ in
            self?.state.value = .failure
        }
    }
}
