//
//  MFMTag.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 30/03/25.
//

import UIKit

enum MFMTagSize {
    case small
    case medium
}

class MFMTag: UIView {
    // MARK: - Properties
    let label: String
    let size: MFMTagSize
    
    // MARK: - Views
    lazy var labelView: UILabel = {
        let view = UILabel()
        view.text = label
        view.font = .systemFont(ofSize: size == .small ? 8 : 11, weight: .semibold)
        view.textColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // MARK: - Initializers
    init(label: String, size: MFMTagSize) {
        self.label = label
        self.size = size
        super.init(frame: .zero)
        setupViewCode()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - View Code
extension MFMTag: ViewCode {
    func addSubviews() {
        addSubview(labelView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate(
            [
                labelView.topAnchor.constraint(equalTo: topAnchor, constant: 8),
                labelView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
                labelView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
                labelView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8)
            ]
        )
    }
    
    func setupStyle() {
        backgroundColor = .systemGray5
        layer.cornerRadius = 8
    }
}
