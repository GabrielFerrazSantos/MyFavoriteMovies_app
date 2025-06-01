//
//  ProfileRecentActivitiesHeaderView.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 24/05/25.
//

import UIKit

class ProfileRecentActivitiesHeaderView: UIView {
    // MARK: - Views
    let titleLabelView: UILabel = {
        let view = UILabel()
        view.text = String(localized: "RecentActivities")
        view.font = .systemFont(ofSize: 20, weight: .bold)
        view.numberOfLines = 0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewCode()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - View Code
extension ProfileRecentActivitiesHeaderView: ViewCode {
    func addSubviews() {
        addSubview(titleLabelView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate(
            [
                titleLabelView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
                titleLabelView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
                titleLabelView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
                titleLabelView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
            ]
        )
    }
    
    func setupStyle() {
        backgroundColor = .clear
    }
}

