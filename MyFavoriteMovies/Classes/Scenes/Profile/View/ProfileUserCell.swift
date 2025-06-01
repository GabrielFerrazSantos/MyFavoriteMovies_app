//
//  ProfileUserCell.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 24/05/25.
//

import UIKit

class ProfileUserCell: UITableViewCell {
    // MARK: - Properties
    static let reuseIdentifier = "ProfileUserCell"
    
    // MARK: - Views
    let avatarView: UIImageView = {
        let view = UIImageView()
        view.layer.masksToBounds = true
        view.layer.borderWidth = 1.5
        view.layer.borderColor = UIColor.white.cgColor
        view.layer.cornerRadius = 50
        view.setImageFrom(url: "https://static.vecteezy.com/system/resources/previews/009/292/244/non_2x/default-avatar-icon-of-social-media-user-vector.jpg")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let usernameLabelView: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 16, weight: .regular)
        view.numberOfLines = 0
        view.text = Session.shared.user?.username
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
}

// MARK: - View Code
extension ProfileUserCell: ViewCode {
    func addSubviews() {
        addSubview(avatarView)
        addSubview(usernameLabelView)
        addSubview(dividerView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate(
            [
                avatarView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
                avatarView.centerXAnchor.constraint(equalTo: centerXAnchor),
                avatarView.heightAnchor.constraint(equalToConstant: 100),
                avatarView.widthAnchor.constraint(equalToConstant: 100),
                
                usernameLabelView.topAnchor.constraint(equalTo: avatarView.bottomAnchor, constant: 20),
                usernameLabelView.centerXAnchor.constraint(equalTo: centerXAnchor),
                
                dividerView.topAnchor.constraint(equalTo: usernameLabelView.bottomAnchor, constant: 20),
                dividerView.leadingAnchor.constraint(equalTo: leadingAnchor),
                dividerView.trailingAnchor.constraint(equalTo: trailingAnchor),
                dividerView.bottomAnchor.constraint(equalTo: bottomAnchor)
            ]
        )
    }
    
    func setupStyle() {
        backgroundColor = .clear
        isUserInteractionEnabled = false
    }
}
