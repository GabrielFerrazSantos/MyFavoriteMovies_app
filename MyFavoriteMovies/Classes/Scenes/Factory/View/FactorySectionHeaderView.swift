//
//  FactorySectionHeaderView.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 01/05/25.
//

import UIKit

class FactorySectionHeaderView: UIView {
    // MARK: - Views
    let labelView: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 20, weight: .bold)
        view.numberOfLines = 0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // MARK: - Initializers
    init(type: FactorySectionType) {
        super.init(frame: .zero)
        
        switch type {
        case .article:
            break
        case .commentaries:
            labelView.text = String(localized: "Commentaries")
        case .reviews:
            labelView.text = String(localized: "Reviews")
        }
        
        setupViewCode()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - View Code
extension FactorySectionHeaderView: ViewCode {
    func addSubviews() {
        addSubview(labelView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate(
            [
                labelView.topAnchor.constraint(equalTo: topAnchor),
                labelView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
                labelView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
                labelView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20)
            ]
        )
    }
    
    func setupStyle() {
        backgroundColor = .clear
    }
}

