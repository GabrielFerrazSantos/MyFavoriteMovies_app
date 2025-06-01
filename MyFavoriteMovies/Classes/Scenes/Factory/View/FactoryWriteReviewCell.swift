//
//  FactoryWriteReviewCell.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 01/05/25.
//

import UIKit

class FactoryWriteReviewCell: UITableViewCell {
    // MARK: - Properties
    static let reuseIdentifier = "FactoryWriteReviewCell"
    var action: ((String, Int) -> Void)?
    
    // MARK: - Views
    let reviewInput: MFMTextFieldView = {
        let textField = MFMTextFieldView(placeHolder: String(localized: "WriteReview"))
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var scoreInput: MFMTextFieldView = {
        let textField = MFMTextFieldView(placeHolder: String(localized: "Score"))
        textField.textField.textAlignment = .center
        textField.textField.inputView = scorePickerView
        
        let spaceArea = UIBarButtonItem(systemItem: .flexibleSpace)
        let doneButton = UIBarButtonItem(title: String(localized: "Done"), style: .done, target: self, action: #selector(didTapDoneButton))
        
        let toolbar = UIToolbar()
        toolbar.barStyle = .default
        toolbar.isTranslucent = true
        toolbar.tintColor = .blue
        toolbar.sizeToFit()
        toolbar.setItems([spaceArea, doneButton], animated: false)
        toolbar.isUserInteractionEnabled = true
        
        textField.textField.inputAccessoryView = toolbar
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var scorePickerView: UIPickerView = {
        let pickerView = UIPickerView()
        pickerView.delegate = self
        pickerView.dataSource = self
        pickerView.translatesAutoresizingMaskIntoConstraints = false
        return pickerView
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
        guard let action, let review = reviewInput.textField.text, let score = scoreInput.textField.text else { return }
        
        if review.isEmpty {
            reviewInput.setErrorStyle()
        } else {
            reviewInput.setNeutralStyle()
        }
        
        action(review, Int(score) ?? 0 + 1)
    }
    
    @objc
    func didTapDoneButton() {
        scoreInput.textField.resignFirstResponder()
    }
}

// MARK: - View Code
extension FactoryWriteReviewCell: ViewCode {
    func addSubviews() {
        addSubview(reviewInput)
        addSubview(scoreInput)
        addSubview(sendButton)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate(
            [
                reviewInput.topAnchor.constraint(equalTo: topAnchor),
                reviewInput.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
                
                scoreInput.topAnchor.constraint(equalTo: topAnchor),
                scoreInput.leadingAnchor.constraint(equalTo: reviewInput.trailingAnchor, constant: 5),
                scoreInput.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
                scoreInput.widthAnchor.constraint(equalToConstant: 95),
                
                sendButton.topAnchor.constraint(equalTo: reviewInput.bottomAnchor),
                sendButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
                sendButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
                sendButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20)
            ]
        )
    }
    
    func setupStyle() {
        backgroundColor = .clear
        contentView.isUserInteractionEnabled = false
    }
}

// MARK: - Extension
extension FactoryWriteReviewCell {
    func setupCell(action: @escaping (String, Int) -> Void) {
        self.action = action
    }
}

extension FactoryWriteReviewCell: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        5
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        String(row + 1)
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        scoreInput.textField.text = String(row + 1)
    }
}
