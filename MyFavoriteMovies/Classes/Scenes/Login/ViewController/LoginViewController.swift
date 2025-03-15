//
//  LoginViewController.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 11/03/25.
//

import UIKit

class LoginViewController: Controller {
    // MARK: - Properties
    let viewModel: LoginViewModel
    
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
    
    lazy var usernameInput: MFMTextFieldView = {
        let textField = MFMTextFieldView(placeHolder: viewModel.viewData.usernamePlacheHolder, tag: 1)
        textField.delegate = self
        return textField
    }()
    
    lazy var passwordInput: MFMTextFieldView = {
        let textField = MFMTextFieldView(placeHolder: viewModel.viewData.passwordPlaceHolder, tag: 2)
        textField.setSecureTextEntry()
        textField.delegate = self
        return textField
    }()
    
    lazy var createAccountButton: MFMTextButton = {
        let button = MFMTextButton()
        button.updateText(viewModel.viewData.createAccountButtonTitle)
        button.addTarget(
            self,
            action: #selector(didTapCreateAccountButton),
            for: .touchUpInside
        )
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var loginButton: MFMButton = {
        let button = MFMButton()
        button.updateTitle(viewModel.viewData.loginButtonTitle)
        button.addTarget(
            self,
            action: #selector(didTapLoginButton),
            for: .touchUpInside
        )
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // MARK: - Initializers
    init(viewModel: LoginViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
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
                self.loginButton.isLoading = true
                
            case .success:
                self.loginButton.isLoading = false
                print("Sucesso")
                
            case .failure:
                self.loginButton.isLoading = false
                self.setupLoginError()
            }
        }
    }
    
    // MARK: - Functions
    @objc
    func didTapCreateAccountButton() {
        viewModel.goToCreateAccount()
    }
    
    @objc
    func didTapLoginButton() {
        var error = false
        
        [usernameInput, passwordInput].forEach({
            if $0.getInputText().isEmpty {
                self.setupEmptyError(on: $0)
                error = true
            }
        })
        
        guard !error else { return }
        
        viewModel.login(username: usernameInput.getInputText(), password: passwordInput.getInputText())
    }
    
    func setupNeutralStyle(on input: MFMTextFieldView) {
        input.setNeutralStyle()
    }
    
    func setupEmptyError(on input: MFMTextFieldView) {
        input.setErrorText(viewModel.viewData.emptyErrorText)
        input.setErrorStyle()
    }
    
    func setupLoginError() {
        usernameInput.setErrorText(nil)
        passwordInput.setErrorText(viewModel.viewData.loginErrorText)
        usernameInput.setErrorStyle()
        passwordInput.setErrorStyle()
    }
}

// MARK: - View Code
extension LoginViewController: ViewCode {
    func addSubviews() {
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(inputsView)
        inputsView.addArrangedSubview(usernameInput)
        inputsView.addArrangedSubview(passwordInput)
        contentView.addSubview(createAccountButton)
        contentView.addSubview(loginButton)
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
                
                createAccountButton.topAnchor.constraint(equalTo: inputsView.bottomAnchor),
                createAccountButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
                
                loginButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
                loginButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
                loginButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -24)
            ]
        )
    }
    
    func setupStyle() {
        view.backgroundColor = UIColor.appThemeColor
    }
}

// MARK: - Delegates
extension LoginViewController: UITextFieldDelegate {
    func textField(
        _ textField: UITextField,
        shouldChangeCharactersIn range: NSRange,
        replacementString string: String) -> Bool
    {
        var maxLength: Int = 0
        
        switch textField.tag {
        case 1:
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
