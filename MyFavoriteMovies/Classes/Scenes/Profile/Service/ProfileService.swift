//
//  ProfileService.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 24/05/25.
//

protocol ProfileService {
    func fetchRecentActivities(
        success: @escaping ([ProfileActivityModel]) -> Void,
        failure: @escaping (Error) -> Void
    )
}

class ProfileServiceConcrete: Service, ProfileService {
    // MARK: - Functions
    func fetchRecentActivities(
        success: @escaping ([ProfileActivityModel]) -> Void,
        failure: @escaping (Error) -> Void
    ) {
        let request = ProfileRequest()
        
        makeRequest(request: request) { (result: [ProfileActivityModel]) in
            success(result)
        } failure: { error in
            failure(error)
        }
    }
}
