//
//  FactoryWriteCommentaryCell.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 01/05/25.
//

import UIKit

class FactoryWriteCommentaryCell: UITableViewCell {
    // MARK: - Properties
    static let reuseIdentifier = "FactoryWriteCommentaryCell"
    var action: ((String) -> Void)?
    
    // MARK: - Views
    lazy var commentaryInput: MFMTextFieldView = {
        let textField = MFMTextFieldView(placeHolder: String(localized: "WriteCommentary"))
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var sendButton: MFMButton = {
        let button = MFMButton()
        button.updateTitle(String(localized: "Send"))
        button.addTarget(
            self,
            action: #selector(didTapSendButton),
            for: .touchUpInside
        )
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // MARK: - Initializers
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViewCode()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Functions
    @objc
    func didTapSendButton() {
        guard let action, let commentary = commentaryInput.textField.text else { return }
        
        if commentary.isEmpty {
            commentaryInput.setErrorStyle()
        } else {
            commentaryInput.setNeutralStyle()
        }
        
        action(commentary)
    }
}

// MARK: - View Code
extension FactoryWriteCommentaryCell: ViewCode {
    func addSubviews() {
        addSubview(commentaryInput)
        addSubview(sendButton)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate(
            [
                commentaryInput.topAnchor.constraint(equalTo: topAnchor),
                commentaryInput.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
                commentaryInput.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
                
                sendButton.topAnchor.constraint(equalTo: commentaryInput.bottomAnchor),
                sendButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
                sendButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
                sendButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -40)
            ]
        )
    }
    
    func setupStyle() {
        backgroundColor = .clear
        contentView.isUserInteractionEnabled = false
    }
}

// MARK: - Extension
extension FactoryWriteCommentaryCell {
    func setupCell(action: @escaping (String) -> Void) {
        self.action = action
    }
}
