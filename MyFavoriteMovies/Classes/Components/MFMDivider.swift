//
//  MFMDivider.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 30/03/25.
//

import UIKit

class MFMDivider: UIView {
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: .zero)
        heightAnchor.constraint(equalToConstant: 1).isActive = true
        backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
