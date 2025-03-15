//
//  CreateAccountViewController.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 14/03/25.
//

import UIKit

class CreateAccountViewController: Controller {
    // MARK: - Properties
    let viewModel: CreateAccountViewModel
    
    // MARK: - Views
    let scrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let inputsView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.distribution = .fill
        view.spacing = 12
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var nameInput: MFMTextFieldView = {
        let textField = MFMTextFieldView(placeHolder: viewModel.viewData.namePlacheHolder, tag: 1)
        textField.delegate = self
        return textField
    }()
    
    lazy var usernameInput: MFMTextFieldView = {
        let textField = MFMTextFieldView(placeHolder: viewModel.viewData.usernamePlacheHolder, tag: 2)
        textField.delegate = self
        return textField
    }()
    
    lazy var passwordInput: MFMTextFieldView = {
        let textField = MFMTextFieldView(placeHolder: viewModel.viewData.passwordPlaceHolder, tag: 3)
        textField.setSecureTextEntry()
        textField.delegate = self
        return textField
    }()
    
    lazy var createAccountButton: MFMButton = {
        let button = MFMButton()
        button.updateTitle(viewModel.viewData.createAccountButtonTitle)
        button.addTarget(
            self,
            action: #selector(didTapCreateAccountButton),
            for: .touchUpInside
        )
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // MARK: - Initializer
    init(viewModel: CreateAccountViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation()
        setupViewCode()
        bindViewModel()
        hideKeyboard()
        setupKeyboardNotifications()
    }
    
    // MARK: - Bind
    func bindViewModel() {
        viewModel.state.bind { state in
            switch state {
            case .initial:
                break
                
            case .loading:
                self.view.endEditing(true)
                self.createAccountButton.isLoading = true
                
            case .success:
                self.createAccountButton.isLoading = false
                self.showAlert()
                
            case .failure:
                self.createAccountButton.isLoading = false
                self.setupUsernameError()
            }
        }
    }
    
    // MARK: - Functions
    @objc
    func didTapCreateAccountButton() {
        var error = false
        
        [nameInput, usernameInput, passwordInput].forEach({
            if $0.getInputText().isEmpty {
                self.setupEmptyError(on: $0)
                error = true
            }
        })
        
        guard !error else { return }
        
        viewModel.createAccount(
            name: nameInput.getInputText(),
            username: usernameInput.getInputText(),
            password: passwordInput.getInputText()
        )
    }
    
    func showAlert() {
        let alert = UIAlertController(
            title: nil,
            message: viewModel.viewData.alertMessage,
            preferredStyle: .alert
        )
        
        let alertAction = UIAlertAction(title: String(localized: "Ok"), style: .default) { _ in
            self.dismiss(animated: true) {
                self.viewModel.goToLogin()
            }
        }
        
        alert.addAction(alertAction)
        
        present(alert, animated: true)
    }
    
    func setupNeutralStyle(on input: MFMTextFieldView) {
        input.setNeutralStyle()
    }
    
    func setupEmptyError(on input: MFMTextFieldView) {
        input.setErrorText(viewModel.viewData.emptyErrorText)
        input.setErrorStyle()
    }
    
    func setupUsernameError() {
        usernameInput.setErrorText(viewModel.viewData.usernameAlreadyExistsErrorText)
        usernameInput.setErrorStyle()
    }
}

// MARK: - View Code
extension CreateAccountViewController: ViewCode {
    func addSubviews() {
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(inputsView)
        inputsView.addArrangedSubview(nameInput)
        inputsView.addArrangedSubview(usernameInput)
        inputsView.addArrangedSubview(passwordInput)
        contentView.addSubview(createAccountButton)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate(
            [
                scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                scrollView.heightAnchor.constraint(equalTo: contentView.heightAnchor),
                scrollView.widthAnchor.constraint(equalTo: view.widthAnchor),
                scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
                
                contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
                contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
                contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
                contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
                contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
                
                inputsView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
                inputsView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
                inputsView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
                
                createAccountButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
                createAccountButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
                createAccountButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -24)
            ]
        )
    }
    
    func setupStyle() {
        view.backgroundColor = UIColor.appThemeColor
    }
}

// MARK: - Delegates
extension CreateAccountViewController: UITextFieldDelegate {
    func textField(
        _ textField: UITextField,
        shouldChangeCharactersIn range: NSRange,
        replacementString string: String) -> Bool
    {
        var maxLength: Int = 0
        
        switch textField.tag {
        case 1:
            maxLength = 50
            setupNeutralStyle(on: nameInput)
        case 2:
            maxLength = 15
            setupNeutralStyle(on: usernameInput)
        default:
            maxLength = 100
            setupNeutralStyle(on: passwordInput)
        }
        
        let currentString = (textField.text ?? "") as NSString
        let newString = currentString.replacingCharacters(in: range, with: string)

        return newString.count <= maxLength
    }
}
