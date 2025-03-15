//
//  MFMTextFieldView.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 14/03/25.
//

import UIKit

class MFMTextFieldView: UIStackView {
    // MARK: - Properties
    let helperText: String?
    var errorText: String?
    weak var delegate: UITextFieldDelegate? {
        didSet {
            textField.delegate = delegate
        }
    }
    
    // MARK: - Views
    lazy var textField: MFMTextField = {
        let textField = MFMTextField()
        return textField
    }()
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.text = helperText
        label.font = .systemFont(ofSize: 12, weight: .regular)
        label.textColor = UIColor.red.withAlphaComponent(0.5)
        label.numberOfLines = 0
        return label
    }()
    
    // MARK: - Initializer
    init(
        placeHolder: String?,
        helperText: String? = nil,
        tag: Int? = nil
    ) {
        self.helperText = helperText
        super.init(frame: .zero)
        axis = .vertical
        distribution = .fillProportionally
        spacing = 10
        textField.placeholder = placeHolder
        textField.tag = tag ?? 0
        setupViewCode()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Functions
    func setErrorText(_ errorText: String?) {
        self.errorText = errorText
    }
    
    func setSecureTextEntry() {
        textField.isSecureTextEntry = true
    }
    
    func setNeutralStyle() {
        textField.setNeutralStyle()
        label.text = helperText
    }
    
    func setErrorStyle() {
        textField.setErrorStyle()
        label.text = errorText
    }
    
    func getInputText() -> String {
        textField.text ?? ""
    }
}

// MARK: - View Code
extension MFMTextFieldView: ViewCode {
    func addSubviews() {
        addArrangedSubview(textField)
        addArrangedSubview(label)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            textField.heightAnchor.constraint(equalToConstant: 48),
            label.heightAnchor.constraint(equalToConstant: 12)
        ])
    }
    
    func setupStyle() { }
}
