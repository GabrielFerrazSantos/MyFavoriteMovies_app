//
//  MFMButton.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 11/03/25.
//

import UIKit

class MFMButton: UIButton {
    // MARK: - Properties
    override open var isHighlighted: Bool {
        didSet {
            super.isHighlighted = isHighlighted
            backgroundColor = isHighlighted ? UIColor(red: 1, green: 1, blue: 1, alpha: 0.5) : .white
        }
    }
    
    let spinner: UIActivityIndicatorView = {
        let spinner = UIActivityIndicatorView()
        spinner.color = UIColor.appThemeColor
        spinner.style = .medium
        spinner.hidesWhenStopped = true
        spinner.translatesAutoresizingMaskIntoConstraints = false
        return spinner
    }()
    
    var isLoading = false {
        didSet {
            updateLoading()
        }
    }
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: .zero)
        heightAnchor.constraint(equalToConstant: 48).isActive = true
        layer.cornerRadius = 15.0
        layer.borderWidth = 2
        layer.borderColor = UIColor.systemGray.cgColor
        backgroundColor = .white
        setTitleColor(UIColor.appThemeColor, for: .normal)
        setupSpinner()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Functions
    func setupSpinner() {
        addSubview(spinner)
        
        NSLayoutConstraint.activate(
            [
                spinner.centerXAnchor.constraint(equalTo: self.centerXAnchor),
                spinner.centerYAnchor.constraint(equalTo: self.centerYAnchor)
            ]
        )
    }
    
    func updateTitle(_ title: String) {
        setTitle(title, for: .normal)
    }
    
    func updateLoading() {
        if isLoading {
            spinner.startAnimating()
            titleLabel?.alpha = 0
            isEnabled = false
        } else {
            spinner.stopAnimating()
            titleLabel?.alpha = 1
            isEnabled = true
        }
    }
}
