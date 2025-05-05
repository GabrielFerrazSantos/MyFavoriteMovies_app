//
//  FactoryImageCell.swift.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 01/05/25.
//

import UIKit

class FactoryImageCell: UITableViewCell {
    // MARK: - Properties
    static let reuseIdentifier = "FactoryImageCell"
    
    // MARK: - Views
    let image: UIImageView = {
        let view = UIImageView()
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
extension FactoryImageCell: ViewCode {
    func addSubviews() {
        addSubview(image)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate(
            [
                image.topAnchor.constraint(equalTo: topAnchor),
                image.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
                image.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
                image.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
                image.heightAnchor.constraint(equalToConstant: 200)
            ]
        )
    }
    
    func setupStyle() {
        backgroundColor = .clear
        isUserInteractionEnabled = false
    }
}

// MARK: - Extension
extension FactoryImageCell {
    func setupCell(with url: String) {
        image.setImageFrom(url: url)
    }
}
