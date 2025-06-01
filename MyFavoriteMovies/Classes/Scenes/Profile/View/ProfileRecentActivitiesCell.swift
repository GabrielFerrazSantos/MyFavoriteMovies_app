//
//  ProfileRecentActivitiesCell.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 24/05/25.
//

import UIKit

class ProfileRecentActivitiesCell: UITableViewCell {
    // MARK: - Properties
    static let reuseIdentifier = "ProfileRecentActivitiesCell"
    
    // MARK: - Views
    let titleView: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 14, weight: .bold)
        view.numberOfLines = 0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let descriptionLabelView: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 14, weight: .regular)
        view.numberOfLines = 0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let scoreLabelView: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 12, weight: .bold)
        view.textAlignment = .center
        view.numberOfLines = 0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let dividerView: MFMDivider = {
        let view = MFMDivider()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // MARK: - Initializers
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViewCode()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycle
    override func prepareForReuse() {
        super.prepareForReuse()
        dividerView.isHidden = false
    }
}

// MARK: - View Code
extension ProfileRecentActivitiesCell: ViewCode {
    func addSubviews() {
        addSubview(titleView)
        addSubview(descriptionLabelView)
        addSubview(scoreLabelView)
        addSubview(dividerView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate(
            [
                titleView.topAnchor.constraint(equalTo: topAnchor, constant: 15),
                titleView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
                titleView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
                
                descriptionLabelView.topAnchor.constraint(equalTo: titleView.bottomAnchor, constant: 5),
                descriptionLabelView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
                descriptionLabelView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
                
                scoreLabelView.topAnchor.constraint(equalTo: descriptionLabelView.bottomAnchor, constant: 5),
                scoreLabelView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
                
                dividerView.topAnchor.constraint(equalTo: scoreLabelView.bottomAnchor, constant: 15),
                dividerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
                dividerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
                dividerView.bottomAnchor.constraint(equalTo: bottomAnchor)
            ]
        )
    }
    
    func setupStyle() {
        backgroundColor = .clear
    }
}

// MARK: - Extension
extension ProfileRecentActivitiesCell {
    func setupCell(activity: ProfileActivityModel, showDivider: Bool) {
        if let score = activity.score {
            titleView.text = "\(String(localized: "Reviewed"))'\(activity.title)'"
            scoreLabelView.text = "\(score)/5"
        } else {
            titleView.text = "\(String(localized: "Commented"))'\(activity.title)'"
        }
        
        descriptionLabelView.text = activity.description
        
        if !showDivider {
            dividerView.isHidden = true
        }
    }
}
