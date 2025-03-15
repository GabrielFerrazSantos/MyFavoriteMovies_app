//
//  MFMTextField.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 11/03/25.
//

import UIKit

class MFMTextField: UITextField {
    // MARK: - Properties
    let textPadding = UIEdgeInsets(
        top: 0,
        left: 24,
        bottom: 0,
        right: 24
    )
    
    // MARK: - Initializers
    init() {
        super.init(frame: .zero)
        heightAnchor.constraint(equalToConstant: 48).isActive = true
        layer.cornerRadius = 15.0
        layer.borderWidth = 2
        layer.borderColor = UIColor.systemGray.cgColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Functions
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.textRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.editingRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }
    
    func setNeutralStyle() {
        layer.borderColor = UIColor.systemGray.cgColor
    }
    
    func setErrorStyle() {
        layer.borderColor = UIColor.red.cgColor.copy(alpha: 0.5)
    }
}
