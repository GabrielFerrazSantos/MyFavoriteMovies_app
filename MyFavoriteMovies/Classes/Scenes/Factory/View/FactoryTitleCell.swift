//
//  FactoryTitleCell.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 01/05/25.
//

import UIKit

class FactoryTitleCell: UITableViewCell {
    // MARK: - Properties
    static let reuseIdentifier = "FactoryTitleCell"
    
    // MARK: - Views
    let labelView: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 20, weight: .bold)
        view.numberOfLines = 0
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
extension FactoryTitleCell: ViewCode {
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
        isUserInteractionEnabled = false
    }
}

// MARK: - Extension
extension FactoryTitleCell {
    func setupCell(with title: String) {
        labelView.text = title
    }
}
