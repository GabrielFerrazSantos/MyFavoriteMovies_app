//
//  FactoryCommentaryCell.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 01/05/25.
//

import UIKit

class FactoryCommentaryCell: UITableViewCell {
    // MARK: - Properties
    static let reuseIdentifier = "FactoryCommentaryCell"
    
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
    
    let dateLabelView: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 10, weight: .regular)
        view.textAlignment = .center
        view.numberOfLines = 0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let commentaryLabelView: UILabel = {
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
extension FactoryCommentaryCell: ViewCode {
    func addSubviews() {
//        addSubview(avatarView)
        addSubview(usernameLabelView)
        addSubview(commentaryLabelView)
        addSubview(dateLabelView)
        addSubview(dividerView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate(
            [
//                avatarView.topAnchor.constraint(equalTo: topAnchor),
//                avatarView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
//                avatarView.heightAnchor.constraint(equalToConstant: 50),
//                avatarView.widthAnchor.constraint(equalToConstant: 50),
                
                usernameLabelView.topAnchor.constraint(equalTo: topAnchor, constant: 15),
                usernameLabelView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
                usernameLabelView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
                
                commentaryLabelView.topAnchor.constraint(equalTo: usernameLabelView.bottomAnchor, constant: 5),
                commentaryLabelView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
                commentaryLabelView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
                
                dateLabelView.topAnchor.constraint(equalTo: commentaryLabelView.bottomAnchor, constant: 5),
                dateLabelView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
                
                dividerView.topAnchor.constraint(equalTo: dateLabelView.bottomAnchor, constant: 15),
                dividerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
                dividerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
                dividerView.bottomAnchor.constraint(equalTo: bottomAnchor)
            ]
        )
    }
    
    func setupStyle() {
        backgroundColor = .clear
        isUserInteractionEnabled = false
    }
}

// MARK: - Extension
extension FactoryCommentaryCell {
    func setupCell(avatar: String?, username: String, date: String, commentary: String, showDivider: Bool) {
        avatarView.setImageFrom(url: avatar ?? "https://static.vecteezy.com/system/resources/previews/009/292/244/non_2x/default-avatar-icon-of-social-media-user-vector.jpg")
        
        if let date = date.toDate()?.distanceFromNow() {
            dateLabelView.text = "\(date) \(String(localized: "Ago"))"
        }
        
        usernameLabelView.text = username
        commentaryLabelView.text = commentary
        
        if !showDivider {
            dividerView.isHidden = true
        }
    }
}
