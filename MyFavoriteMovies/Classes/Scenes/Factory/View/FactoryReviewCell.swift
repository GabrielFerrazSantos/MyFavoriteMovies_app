//
//  FactoryReviewCell.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 01/05/25.
//

import UIKit

class FactoryReviewCell: UITableViewCell {
    // MARK: - Properties
    static let reuseIdentifier = "FactoryReviewCell"
    
    // MARK: - Views
    let avatarView: UIImageView = {
        let view = UIImageView()
        view.layer.masksToBounds = true
        view.layer.borderWidth = 1.5
        view.layer.borderColor = UIColor.white.cgColor
        view.layer.cornerRadius = 50 / 2
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let usernameLabelView: UILabel = {
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
    
    let reviewLabelView: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 14, weight: .regular)
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
extension FactoryReviewCell: ViewCode {
    func addSubviews() {
//        addSubview(avatarView)
        addSubview(usernameLabelView)
        addSubview(reviewLabelView)
        addSubview(scoreLabelView)
        addSubview(dividerView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate(
            [
//                avatarView.topAnchor.constraint(equalTo: topAnchor),
//                avatarView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
//                avatarView.heightAnchor.constraint(equalToConstant: 50),
//                avatarView.widthAnchor.constraint(equalToConstant: 50),
                
                usernameLabelView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
                usernameLabelView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
                usernameLabelView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
                
                reviewLabelView.topAnchor.constraint(equalTo: usernameLabelView.bottomAnchor, constant: 5),
                reviewLabelView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
                reviewLabelView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
                
                scoreLabelView.topAnchor.constraint(equalTo: reviewLabelView.bottomAnchor, constant: 5),
                scoreLabelView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
                
                dividerView.topAnchor.constraint(equalTo: scoreLabelView.bottomAnchor, constant: 20),
                dividerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
                dividerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
                dividerView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20)
            ]
        )
    }
    
    func setupStyle() {
        backgroundColor = .clear
        isUserInteractionEnabled = false
    }
}

// MARK: - Extension
extension FactoryReviewCell {
    func setupCell(avatar: String?, username: String, score: Int, review: String, showDivider: Bool) {
        avatarView.setImageFrom(url: avatar ?? "https://static.vecteezy.com/system/resources/previews/009/292/244/non_2x/default-avatar-icon-of-social-media-user-vector.jpg")
        
        usernameLabelView.text = username
        scoreLabelView.text = "\(score)/5"
        reviewLabelView.text = review
        
        if !showDivider {
            dividerView.isHidden = true
        }
    }
}
