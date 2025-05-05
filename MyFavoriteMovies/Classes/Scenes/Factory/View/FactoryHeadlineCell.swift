//
//  FactoryHeadlineCell.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 01/05/25.
//

import UIKit

class FactoryHeadlineCell: UITableViewCell {
    // MARK: - Properties
    static let reuseIdentifier = "FactoryHeadlineCell"
    
    // MARK: - Views
    let textView: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 14, weight: .light)
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
extension FactoryHeadlineCell: ViewCode {
    func addSubviews() {
        addSubview(textView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate(
            [
                textView.topAnchor.constraint(equalTo: topAnchor),
                textView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
                textView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
                textView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20)
            ]
        )
    }
    
    func setupStyle() {
        backgroundColor = .clear
        isUserInteractionEnabled = false
    }
}

// MARK: - Extension
extension FactoryHeadlineCell {
    func setupCell(with text: String) {
        textView.text = text
    }
}
