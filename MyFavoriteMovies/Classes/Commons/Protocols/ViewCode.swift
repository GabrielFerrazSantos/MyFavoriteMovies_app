//
//  ViewCode.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 11/03/25.
//

protocol ViewCode {
    func addSubviews()
    func setupConstraints()
    func setupStyle()
}

extension ViewCode {
    func setupViewCode() {
        addSubviews()
        setupConstraints()
        setupStyle()
    }
}
