//
//  MFMTextButton.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 14/03/25.
//

import UIKit

class MFMTextButton: UIButton {    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: .zero)
        heightAnchor.constraint(equalToConstant: 48).isActive = true
        contentHorizontalAlignment = .leading
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Functions
    func updateText(_ text: String) {
        setAttributedTitle(
            .init(
                string: text,
                attributes: [
                    .font: UIFont.systemFont(ofSize: 15, weight: .regular),
                    .foregroundColor: UIColor.white
                ]
            ),
            for: .normal
        )
    }
}
