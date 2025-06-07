var entities = [{
  "id": 1,
  "typeString": "class",
  "methods": [
    {
  "name": "application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    197
  ],
  "name": "AppDelegate",
  "superClass": 196
},{
  "id": 2,
  "typeString": "class",
  "properties": [
    {
  "name": "var scrollViewHeight: CGFloat? @objc @objc @objc",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "viewWillAppear(_ animated: Bool)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupNavigation()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "hideKeyboard()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupKeyboardNotifications()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "dismissMyKeyboard()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "keyboardWillShow(_ notification: Notification)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "keyboardWillhide()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "Controller",
  "superClass": 198
},{
  "id": 7,
  "typeString": "struct",
  "properties": [
    {
  "name": "let id: Int",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let name: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let username: String",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "UserLoggedModel",
  "superClass": 199
},{
  "id": 8,
  "typeString": "protocol",
  "properties": [
    {
  "name": "var rootViewController: UINavigationController",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "start()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "Coordinator"
},{
  "id": 9,
  "typeString": "protocol",
  "properties": [
    {
  "name": "var endpoint: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var method: HTTPMethod",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var headers: HTTPHeaders",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var pathParameters: [String]?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var queryParameters: [String: Any]?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "Request",
  "extensions": [
    11
  ]
},{
  "id": 10,
  "typeString": "protocol",
  "properties": [
    {
  "name": "var body: Codable",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    9
  ],
  "name": "RequestWithBody"
},{
  "id": 12,
  "typeString": "protocol",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "ViewCode",
  "extensions": [
    13
  ]
},{
  "id": 14,
  "typeString": "struct",
  "name": "Empty",
  "superClass": 200
},{
  "id": 15,
  "typeString": "class",
  "methods": [
    {
  "name": "makeRequest<T: Decodable>( request: Request, success: @escaping (T) -> Void, failure: @escaping (Error) -> Void )",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "makeRequestWithBody<T: Decodable>( request: RequestWithBody, success: @escaping (T) -> Void, failure: @escaping (Error) -> Void )",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "createUrl(endpoint: String, pathParameters: [String]?, queryParameters: [String: Any]?) -> String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "createUrl(endpoint: String) -> String",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "Service"
},{
  "id": 16,
  "typeString": "class",
  "properties": [
    {
  "name": "let shared",
  "type": "type",
  "accessLevel": "internal"
},
    {
  "name": "var user: UserLoggedModel?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "setupUserLogged(_ user: UserLoggedModel)",
  "type": "type",
  "accessLevel": "internal"
}
  ],
  "name": "Session"
},{
  "id": 17,
  "typeString": "class",
  "properties": [
    {
  "name": "var listeners: [(T) -> Void]",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var value: T",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "bind(_ listeners: @escaping (T) -> Void)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(_ value: T)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "Bindable"
},{
  "id": 18,
  "typeString": "class",
  "properties": [
    {
  "name": "var isHighlighted: Bool",
  "type": "instance",
  "accessLevel": "open"
},
    {
  "name": "let spinner: UIActivityIndicatorView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let spinner",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var isLoading",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "setupSpinner()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "updateTitle(_ title: String)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "updateLoading()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(frame: CGRect)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "MFMButton",
  "superClass": 201
},{
  "id": 19,
  "typeString": "class",
  "methods": [
    {
  "name": "init(frame: CGRect)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "MFMDivider",
  "superClass": 202
},{
  "id": 20,
  "typeString": "enum",
  "cases": [
    {
  "name": "small case medium"
}
  ],
  "name": "MFMTagSize"
},{
  "id": 21,
  "typeString": "class",
  "properties": [
    {
  "name": "let label: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let size: MFMTagSize lazy",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var labelView: UILabel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "init(label: String, size: MFMTagSize)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "MFMTag",
  "superClass": 202,
  "extensions": [
    22
  ]
},{
  "id": 23,
  "typeString": "class",
  "methods": [
    {
  "name": "updateText(_ text: String)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(frame: CGRect)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "MFMTextButton",
  "superClass": 201
},{
  "id": 24,
  "typeString": "class",
  "properties": [
    {
  "name": "let textPadding",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "textRect(forBounds bounds: CGRect) -> CGRect",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "editingRect(forBounds bounds: CGRect) -> CGRect",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setNeutralStyle()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setErrorStyle()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "MFMTextField",
  "superClass": 203
},{
  "id": 25,
  "typeString": "class",
  "properties": [
    {
  "name": "let helperText: String?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var errorText: String?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var delegate: UITextFieldDelegate?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var textField: MFMTextField",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let textField",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var label: UILabel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let label",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "setErrorText(_ errorText: String?)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setSecureTextEntry()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setNeutralStyle()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setErrorStyle()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "getInputText() -> String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init( placeHolder: String?, helperText: String? = nil, tag: Int? = nil )",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "MFMTextFieldView",
  "superClass": 204,
  "extensions": [
    26
  ]
},{
  "id": 27,
  "typeString": "class",
  "properties": [
    {
  "name": "var rootViewController: UINavigationController",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "start()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(rootViewController: UINavigationController)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    8
  ],
  "name": "CreateAccountCoordinator",
  "extensions": [
    28
  ]
},{
  "id": 29,
  "typeString": "protocol",
  "methods": [
    {
  "name": "createAccount( name: String, username: String, password: String, success: @escaping () -> Void, failure: @escaping (Error) -> Void )",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "CreateAccountService"
},{
  "id": 30,
  "typeString": "class",
  "methods": [
    {
  "name": "createAccount( name: String, username: String, password: String, success: @escaping () -> Void, failure: @escaping (Error) -> Void )",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "CreateAccountServiceConcrete",
  "superClass": 15
},{
  "id": 31,
  "typeString": "struct",
  "properties": [
    {
  "name": "let name: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let username: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let password: String",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "CreateAccountRequestBody",
  "superClass": 199
},{
  "id": 32,
  "typeString": "struct",
  "properties": [
    {
  "name": "let name: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let username: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let password: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var body: Codable",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var endpoint: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var method: HTTPMethod",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    10
  ],
  "name": "CreateAccountRequest"
},{
  "id": 33,
  "typeString": "class",
  "properties": [
    {
  "name": "let viewModel: CreateAccountViewModel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let scrollView: UIScrollView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let contentView: UIView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let inputsView: UIStackView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var nameInput: MFMTextFieldView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let textField",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var usernameInput: MFMTextFieldView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let textField",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var passwordInput: MFMTextFieldView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let textField",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var createAccountButton: MFMButton",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let button",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "viewDidLoad()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "viewWillAppear(_ animated: Bool)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "bindViewModel()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "didTapCreateAccountButton()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "showAlert()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupNeutralStyle(on input: MFMTextFieldView)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupEmptyError(on input: MFMTextFieldView)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupUsernameError()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(viewModel: CreateAccountViewModel)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "CreateAccountViewController",
  "superClass": 2,
  "extensions": [
    34,
    35
  ]
},{
  "id": 36,
  "typeString": "protocol",
  "properties": [
    {
  "name": "var namePlacheHolder: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var usernamePlacheHolder: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var passwordPlaceHolder: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var emptyErrorText: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var usernameAlreadyExistsErrorText: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var createAccountButtonTitle: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var alertMessage: String",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "CreateAccountViewData"
},{
  "id": 37,
  "typeString": "class",
  "properties": [
    {
  "name": "var namePlacheHolder: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var usernamePlacheHolder: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var passwordPlaceHolder: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var emptyErrorText: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var usernameAlreadyExistsErrorText: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var createAccountButtonTitle: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var alertMessage: String",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    36
  ],
  "name": "CreateAccountViewDataConcrete"
},{
  "id": 38,
  "typeString": "protocol",
  "properties": [
    {
  "name": "var state: Bindable<CreateAccountViewModelState>",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var viewData: CreateAccountViewData",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var delegate: CreateAccountViewModelDelegate?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "createAccount(name: String, username: String, password: String)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "goToLogin()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "CreateAccountViewModel"
},{
  "id": 39,
  "typeString": "protocol",
  "methods": [
    {
  "name": "goToLogin()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "CreateAccountViewModelDelegate",
  "superClass": 205
},{
  "id": 40,
  "typeString": "enum",
  "cases": [
    {
  "name": "initial case loading case success case failure"
}
  ],
  "name": "CreateAccountViewModelState"
},{
  "id": 41,
  "typeString": "class",
  "properties": [
    {
  "name": "var state: Bindable<CreateAccountViewModelState>",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let viewData: CreateAccountViewData",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let service: CreateAccountService",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var delegate: CreateAccountViewModelDelegate?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "createAccount(name: String, username: String, password: String)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "goToLogin()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    38
  ],
  "name": "CreateAccountViewModelConcrete"
},{
  "id": 42,
  "typeString": "enum",
  "properties": [
    {
  "name": "var endpoint: String",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "cases": [
    {
  "name": "movie"
},
    {
  "name": "news"
}
  ],
  "name": "FactoryScreenType"
},{
  "id": 43,
  "typeString": "class",
  "properties": [
    {
  "name": "var rootViewController: UINavigationController",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let screenType: FactoryScreenType",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "start()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(rootViewController: UINavigationController, screenType: FactoryScreenType)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    8
  ],
  "name": "FactoryCoordinator"
},{
  "id": 44,
  "typeString": "struct",
  "properties": [
    {
  "name": "let sections: [FactorySectionModel]",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "FactoryModel",
  "superClass": 199
},{
  "id": 45,
  "typeString": "struct",
  "properties": [
    {
  "name": "let type: FactorySectionType",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let data: [FactorySectionData]",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "FactorySectionModel",
  "superClass": 199
},{
  "id": 46,
  "typeString": "enum",
  "cases": [
    {
  "name": "article case commentaries case reviews"
}
  ],
  "name": "FactorySectionType",
  "superClass": 199
},{
  "id": 47,
  "typeString": "enum",
  "cases": [
    {
  "name": "type case value"
}
  ],
  "name": "CodingKeys",
  "superClass": 206
},{
  "id": 48,
  "typeString": "enum",
  "cases": [
    {
  "name": "title case headline case paragraph case subtitle case image case imageCarrosel case writeReview case review case writeCommentary case commentary"
}
  ],
  "name": "FactorySectionDataType",
  "superClass": 206
},{
  "id": 49,
  "typeString": "enum",
  "methods": [
    {
  "name": "encode(to encoder: Encoder) throws",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(from decoder: Decoder) throws",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "cases": [
    {
  "name": "title"
},
    {
  "name": "headline"
},
    {
  "name": "paragraph"
},
    {
  "name": "subtitle"
},
    {
  "name": "image"
},
    {
  "name": "imageCarousel"
},
    {
  "name": "writeReview case review"
},
    {
  "name": "writeCommentary case commentary"
}
  ],
  "name": "FactorySectionData",
  "superClass": 199,
  "containedEntities": [
    47,
    48
  ]
},{
  "id": 50,
  "typeString": "struct",
  "properties": [
    {
  "name": "let avatar: String?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let username: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let score: Int",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let review: String",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "FactoryReview",
  "superClass": 199
},{
  "id": 51,
  "typeString": "struct",
  "properties": [
    {
  "name": "let avatar: String?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let username: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let commentary: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let date: String",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "FactoryCommentary",
  "superClass": 199
},{
  "id": 52,
  "typeString": "protocol",
  "methods": [
    {
  "name": "fetchData( screenType: FactoryScreenType, success: @escaping (FactoryModel) -> Void, failure: @escaping (Error) -> Void )",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "sendReview( movieId: Int, review: String, score: Int, success: @escaping () -> Void, failure: @escaping (Error) -> Void )",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "sendCommentary( newsId: Int, commentary: String, success: @escaping () -> Void, failure: @escaping (Error) -> Void )",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "FactoryService"
},{
  "id": 53,
  "typeString": "class",
  "methods": [
    {
  "name": "fetchData( screenType: FactoryScreenType, success: @escaping (FactoryModel) -> Void, failure: @escaping (Error) -> Void )",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "sendReview( movieId: Int, review: String, score: Int, success: @escaping () -> Void, failure: @escaping (Error) -> Void )",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "sendCommentary( newsId: Int, commentary: String, success: @escaping () -> Void, failure: @escaping (Error) -> Void )",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "FactoryServiceConcrete",
  "superClass": 15
},{
  "id": 54,
  "typeString": "struct",
  "properties": [
    {
  "name": "let newsId: Int",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let userId: Int",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let commentary: String",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "CommentaryRequestBody",
  "superClass": 199
},{
  "id": 55,
  "typeString": "struct",
  "properties": [
    {
  "name": "let movieId: Int",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let userId: Int",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let review: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let score: Int",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "ReviewRequestBody",
  "superClass": 199
},{
  "id": 56,
  "typeString": "struct",
  "properties": [
    {
  "name": "let newsId: Int",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let commentary: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var body: Codable",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var endpoint: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var method: HTTPMethod",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    10
  ],
  "name": "CommentaryRequest"
},{
  "id": 57,
  "typeString": "struct",
  "properties": [
    {
  "name": "let screenType: FactoryScreenType",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var endpoint: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var method: Alamofire.HTTPMethod",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var pathParameters: [String]?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let id), .news(",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let id): return [String(id)] } }",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    9
  ],
  "name": "FactoryRequest"
},{
  "id": 58,
  "typeString": "struct",
  "properties": [
    {
  "name": "let movieId: Int",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let review: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let score: Int",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var body: Codable",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var endpoint: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var method: HTTPMethod",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    10
  ],
  "name": "ReviewRequest"
},{
  "id": 59,
  "typeString": "class",
  "properties": [
    {
  "name": "let reuseIdentifier",
  "type": "type",
  "accessLevel": "internal"
},
    {
  "name": "let avatarView: UIImageView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let usernameLabelView: UILabel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let dateLabelView: UILabel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let commentaryLabelView: UILabel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let dividerView: MFMDivider",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "prepareForReuse()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(style: UITableViewCell.CellStyle, reuseIdentifier: String?)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "FactoryCommentaryCell",
  "superClass": 207,
  "extensions": [
    60,
    61
  ]
},{
  "id": 62,
  "typeString": "class",
  "properties": [
    {
  "name": "let reuseIdentifier",
  "type": "type",
  "accessLevel": "internal"
},
    {
  "name": "let textView: UILabel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "init(style: UITableViewCell.CellStyle, reuseIdentifier: String?)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "FactoryHeadlineCell",
  "superClass": 207,
  "extensions": [
    63,
    64
  ]
},{
  "id": 65,
  "typeString": "class",
  "properties": [
    {
  "name": "let reuseIdentifier",
  "type": "type",
  "accessLevel": "internal"
},
    {
  "name": "let image: UIImageView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "init(style: UITableViewCell.CellStyle, reuseIdentifier: String?)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "FactoryImageCell",
  "superClass": 207,
  "extensions": [
    66,
    67
  ]
},{
  "id": 68,
  "typeString": "class",
  "properties": [
    {
  "name": "let reuseIdentifier",
  "type": "type",
  "accessLevel": "internal"
},
    {
  "name": "let textView: UILabel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "init(style: UITableViewCell.CellStyle, reuseIdentifier: String?)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "FactoryParagraphCell",
  "superClass": 207,
  "extensions": [
    69,
    70
  ]
},{
  "id": 71,
  "typeString": "class",
  "properties": [
    {
  "name": "let reuseIdentifier",
  "type": "type",
  "accessLevel": "internal"
},
    {
  "name": "let avatarView: UIImageView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let usernameLabelView: UILabel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let scoreLabelView: UILabel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let reviewLabelView: UILabel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let dividerView: MFMDivider",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "prepareForReuse()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(style: UITableViewCell.CellStyle, reuseIdentifier: String?)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "FactoryReviewCell",
  "superClass": 207,
  "extensions": [
    72,
    73
  ]
},{
  "id": 74,
  "typeString": "class",
  "properties": [
    {
  "name": "let labelView: UILabel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "init(type: FactorySectionType)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "FactorySectionHeaderView",
  "superClass": 202,
  "extensions": [
    75
  ]
},{
  "id": 76,
  "typeString": "class",
  "properties": [
    {
  "name": "let reuseIdentifier",
  "type": "type",
  "accessLevel": "internal"
},
    {
  "name": "let labelView: UILabel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "init(style: UITableViewCell.CellStyle, reuseIdentifier: String?)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "FactorySubtitleCell",
  "superClass": 207,
  "extensions": [
    77,
    78
  ]
},{
  "id": 79,
  "typeString": "class",
  "properties": [
    {
  "name": "let reuseIdentifier",
  "type": "type",
  "accessLevel": "internal"
},
    {
  "name": "let labelView: UILabel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "init(style: UITableViewCell.CellStyle, reuseIdentifier: String?)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "FactoryTitleCell",
  "superClass": 207,
  "extensions": [
    80,
    81
  ]
},{
  "id": 82,
  "typeString": "class",
  "properties": [
    {
  "name": "let reuseIdentifier",
  "type": "type",
  "accessLevel": "internal"
},
    {
  "name": "var action: ((String) -> Void)? lazy",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var commentaryInput: MFMTextFieldView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let textField",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var sendButton: MFMButton",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let button",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "didTapSendButton()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(style: UITableViewCell.CellStyle, reuseIdentifier: String?)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "FactoryWriteCommentaryCell",
  "superClass": 207,
  "extensions": [
    83,
    84
  ]
},{
  "id": 85,
  "typeString": "class",
  "properties": [
    {
  "name": "let reuseIdentifier",
  "type": "type",
  "accessLevel": "internal"
},
    {
  "name": "var action: ((String, Int) -> Void)?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let reviewInput: MFMTextFieldView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let textField",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var scoreInput: MFMTextFieldView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let textField",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let spaceArea",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let doneButton",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let toolbar",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var scorePickerView: UIPickerView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let pickerView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var sendButton: MFMButton",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let button",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "didTapSendButton()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "didTapDoneButton()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(style: UITableViewCell.CellStyle, reuseIdentifier: String?)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "FactoryWriteReviewCell",
  "superClass": 207,
  "extensions": [
    86,
    87,
    88
  ]
},{
  "id": 89,
  "typeString": "class",
  "properties": [
    {
  "name": "let viewModel: FactoryViewModel lazy",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var tableView: UITableView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let tableView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let loadingView: NewsListLoadingView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "viewDidLoad()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "viewWillAppear(_ animated: Bool)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "bindViewModel()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "showLoading(_ loading: Bool)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(viewModel: FactoryViewModel)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "FactoryViewController",
  "superClass": 2,
  "extensions": [
    90,
    91
  ]
},{
  "id": 92,
  "typeString": "protocol",
  "properties": [
    {
  "name": "var state: Bindable<FactoryViewModelState>",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var screenType: FactoryScreenType",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var data: FactoryModel?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "fetchData()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "sendReview(review: String, score: Int)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "sendCommentary(commentary: String)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "FactoryViewModel"
},{
  "id": 93,
  "typeString": "enum",
  "cases": [
    {
  "name": "initial case loading case success case failure case reloadReviewOrCommentary"
}
  ],
  "name": "FactoryViewModelState"
},{
  "id": 94,
  "typeString": "class",
  "properties": [
    {
  "name": "var state: Bindable<FactoryViewModelState>",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var screenType: FactoryScreenType",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var service: FactoryService",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var data: FactoryModel?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "fetchData()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "sendReview(review: String, score: Int)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "sendCommentary(commentary: String)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(screenType: FactoryScreenType)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    92
  ],
  "name": "FactoryViewModelConcrete"
},{
  "id": 95,
  "typeString": "class",
  "properties": [
    {
  "name": "var rootViewController: UINavigationController",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "start()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(rootViewController: UINavigationController)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    8
  ],
  "name": "LoginCoordinator",
  "extensions": [
    96
  ]
},{
  "id": 97,
  "typeString": "protocol",
  "methods": [
    {
  "name": "login( username: String, password: String, success: @escaping (UserLoggedModel) -> Void, failure: @escaping (Error) -> Void )",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "LoginService"
},{
  "id": 98,
  "typeString": "class",
  "methods": [
    {
  "name": "login( username: String, password: String, success: @escaping (UserLoggedModel) -> Void, failure: @escaping (Error) -> Void )",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "LoginServiceConcrete",
  "superClass": 15
},{
  "id": 99,
  "typeString": "struct",
  "properties": [
    {
  "name": "let username: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let password: String",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "LoginRequestBody",
  "superClass": 199
},{
  "id": 100,
  "typeString": "struct",
  "properties": [
    {
  "name": "let username: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let password: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var body: Codable",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var endpoint: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var method: HTTPMethod",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    10
  ],
  "name": "LoginRequest"
},{
  "id": 101,
  "typeString": "class",
  "properties": [
    {
  "name": "let viewModel: LoginViewModel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let scrollView: UIScrollView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let contentView: UIView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let inputsView: UIStackView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var usernameInput: MFMTextFieldView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let textField",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var passwordInput: MFMTextFieldView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let textField",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var createAccountButton: MFMTextButton",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let button",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var loginButton: MFMButton",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let button",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "viewDidLoad()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "bindViewModel()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "didTapCreateAccountButton()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "didTapLoginButton()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupNeutralStyle(on input: MFMTextFieldView)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupEmptyError(on input: MFMTextFieldView)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupLoginError()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(viewModel: LoginViewModel)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "LoginViewController",
  "superClass": 2,
  "extensions": [
    102,
    103
  ]
},{
  "id": 104,
  "typeString": "protocol",
  "properties": [
    {
  "name": "var usernamePlacheHolder: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var passwordPlaceHolder: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var createAccountButtonTitle: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var loginButtonTitle: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var emptyErrorText: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var loginErrorText: String",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "LoginViewData"
},{
  "id": 105,
  "typeString": "struct",
  "properties": [
    {
  "name": "var usernamePlacheHolder: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var passwordPlaceHolder: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var emptyErrorText: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var loginErrorText: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var createAccountButtonTitle: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var loginButtonTitle: String",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    104
  ],
  "name": "LoginViewDataConcrete"
},{
  "id": 106,
  "typeString": "protocol",
  "properties": [
    {
  "name": "var state: Bindable<LoginViewModelState>",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var viewData: LoginViewData",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var delegate: LoginViewModelDelegate?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "login(username: String, password: String)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "goToCreateAccount()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "goToHome()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "LoginViewModel"
},{
  "id": 107,
  "typeString": "protocol",
  "methods": [
    {
  "name": "goToCreateAccount()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "goToHome()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "LoginViewModelDelegate",
  "superClass": 205
},{
  "id": 108,
  "typeString": "enum",
  "cases": [
    {
  "name": "initial case loading case success case failure"
}
  ],
  "name": "LoginViewModelState"
},{
  "id": 109,
  "typeString": "class",
  "properties": [
    {
  "name": "var state: Bindable<LoginViewModelState>",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let viewData: LoginViewData",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let service: LoginServiceConcrete",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var delegate: LoginViewModelDelegate?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "login(username: String, password: String)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "goToCreateAccount()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "goToHome()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    106
  ],
  "name": "LoginViewModelConcrete"
},{
  "id": 110,
  "typeString": "struct",
  "properties": [
    {
  "name": "let id: Int",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let poster: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let title: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let releaseDate: String",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "MoviesListItemModel",
  "superClass": 199
},{
  "id": 111,
  "typeString": "class",
  "properties": [
    {
  "name": "var rootViewController: UINavigationController",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var viewModel: MoviesListViewModel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let viewController: MoviesListViewController",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "start()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(rootViewController: UINavigationController)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    8
  ],
  "name": "MoviesListCoordinator",
  "extensions": [
    112
  ]
},{
  "id": 113,
  "typeString": "protocol",
  "methods": [
    {
  "name": "fetchMovies ( success: @escaping ([MoviesListItemModel]) -> Void, failure: @escaping (Error) -> Void )",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "MoviesListService"
},{
  "id": 114,
  "typeString": "class",
  "methods": [
    {
  "name": "fetchMovies( success: @escaping ([MoviesListItemModel]) -> Void, failure: @escaping (Error) -> Void )",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "MoviesListServiceConcrete",
  "superClass": 15
},{
  "id": 115,
  "typeString": "struct",
  "properties": [
    {
  "name": "var endpoint: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var method: HTTPMethod",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    9
  ],
  "name": "MovieListRequest"
},{
  "id": 116,
  "typeString": "class",
  "properties": [
    {
  "name": "let reuseIdentifier",
  "type": "type",
  "accessLevel": "internal"
},
    {
  "name": "let titleLabelView: UILabel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "init(frame: CGRect)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "MoviesListHeaderView",
  "superClass": 208,
  "extensions": [
    117
  ]
},{
  "id": 118,
  "typeString": "class",
  "properties": [
    {
  "name": "let reuseIdentifier",
  "type": "type",
  "accessLevel": "internal"
},
    {
  "name": "var isSelected: Bool",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let image: UIImageView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let titleLabelView: UILabel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let releaseYearLabelView: UILabel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "init(frame: CGRect)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "MoviesListItemCell",
  "superClass": 209,
  "extensions": [
    119,
    120
  ]
},{
  "id": 121,
  "typeString": "class",
  "properties": [
    {
  "name": "let loadingView: UIActivityIndicatorView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "init()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "MoviesListLoadingView",
  "superClass": 202,
  "extensions": [
    122
  ]
},{
  "id": 123,
  "typeString": "class",
  "properties": [
    {
  "name": "let viewModel: MoviesListViewModel lazy",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var collectionView: UICollectionView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let layout",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let collectionView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let loadingView: MoviesListLoadingView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "viewDidLoad()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "viewWillAppear(_ animated: Bool)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "bindViewModel()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "showLoading(_ loading: Bool)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(viewModel: MoviesListViewModel)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "MoviesListViewController",
  "superClass": 2,
  "extensions": [
    124,
    125
  ]
},{
  "id": 126,
  "typeString": "protocol",
  "properties": [
    {
  "name": "var data: [MoviesListSection]?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "set(movies: [MoviesListItemModel])",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "MoviesListViewData"
},{
  "id": 127,
  "typeString": "enum",
  "cases": [
    {
  "name": "search case movies"
}
  ],
  "name": "MoviesListSection"
},{
  "id": 128,
  "typeString": "class",
  "properties": [
    {
  "name": "var data: [MoviesListSection]?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "set(movies: [MoviesListItemModel])",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    126
  ],
  "name": "MoviesListViewDataConcrete"
},{
  "id": 129,
  "typeString": "protocol",
  "properties": [
    {
  "name": "var state: Bindable<NewsListViewModelState>",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var viewData: MoviesListViewData",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var coordinator: MoviesListViewModelDelegate?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "fetchMoviesList()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "goToMovie(_ movieId: Int)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "MoviesListViewModel"
},{
  "id": 130,
  "typeString": "protocol",
  "methods": [
    {
  "name": "goToMovie(_ movieId: Int)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "MoviesListViewModelDelegate"
},{
  "id": 131,
  "typeString": "enum",
  "cases": [
    {
  "name": "initial case loading case success case failure case filter"
}
  ],
  "name": "MoviesListViewModelState"
},{
  "id": 132,
  "typeString": "class",
  "properties": [
    {
  "name": "var state: Bindable<NewsListViewModelState>",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var coordinator: MoviesListViewModelDelegate?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var viewData: MoviesListViewData",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var service: MoviesListService",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "fetchMoviesList()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "goToMovie(_ movieId: Int)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    129
  ],
  "name": "MoviesListViewModelConcrete"
},{
  "id": 133,
  "typeString": "struct",
  "properties": [
    {
  "name": "let id: Int",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let title: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let headline: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let image: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let date: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let tags: [String]",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "NewsListItemModel",
  "superClass": 199
},{
  "id": 134,
  "typeString": "struct",
  "properties": [
    {
  "name": "let names: [String]",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "TagsModel",
  "superClass": 199
},{
  "id": 135,
  "typeString": "class",
  "properties": [
    {
  "name": "var rootViewController: UINavigationController",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var viewModel: NewsListViewModel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let viewController: NewsListViewController",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "start()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(rootViewController: UINavigationController)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    8
  ],
  "name": "NewsListCoordinator",
  "extensions": [
    136
  ]
},{
  "id": 137,
  "typeString": "protocol",
  "methods": [
    {
  "name": "fetchNewsListTags( success: @escaping ([String]) -> Void, failure: @escaping (Error) -> Void )",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "fetchNewsList( success: @escaping ([NewsListItemModel]) -> Void, failure: @escaping (Error) -> Void )",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "NewsListService"
},{
  "id": 138,
  "typeString": "class",
  "methods": [
    {
  "name": "fetchNewsListTags( success: @escaping ([String]) -> Void, failure: @escaping (Error) -> Void )",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "fetchNewsList( success: @escaping ([NewsListItemModel]) -> Void, failure: @escaping (Error) -> Void )",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "NewsListServiceConcrete",
  "superClass": 15
},{
  "id": 139,
  "typeString": "struct",
  "properties": [
    {
  "name": "var endpoint: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var method: HTTPMethod",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    9
  ],
  "name": "NewsListRequest"
},{
  "id": 140,
  "typeString": "struct",
  "properties": [
    {
  "name": "var endpoint: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var method: HTTPMethod",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    9
  ],
  "name": "TagsRequest"
},{
  "id": 141,
  "typeString": "class",
  "properties": [
    {
  "name": "let reuseIdentifier",
  "type": "type",
  "accessLevel": "internal"
},
    {
  "name": "let collectionView: UICollectionView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let layout",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "setCollectionViewDataSourceDelegate(dataSourceDelegate: UICollectionViewDataSource & UICollectionViewDelegate)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(style: UITableViewCell.CellStyle, reuseIdentifier: String?)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "NewsListFilterCell",
  "superClass": 207,
  "extensions": [
    142
  ]
},{
  "id": 143,
  "typeString": "class",
  "properties": [
    {
  "name": "let titleLabelView: UILabel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "init(frame: CGRect)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "NewsListHeaderView",
  "superClass": 202,
  "extensions": [
    144
  ]
},{
  "id": 145,
  "typeString": "class",
  "properties": [
    {
  "name": "let reuseIdentifier",
  "type": "type",
  "accessLevel": "internal"
},
    {
  "name": "let image: UIImageView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let informationsView: UIStackView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let titleLabelView: UILabel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let descriptionLabelView: UILabel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let dateLabelView: UILabel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let tagsView: UIStackView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let dividerView: MFMDivider",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "prepareForReuse()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(style: UITableViewCell.CellStyle, reuseIdentifier: String?)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "NewsListItemCell",
  "superClass": 207,
  "extensions": [
    146,
    147
  ]
},{
  "id": 148,
  "typeString": "class",
  "properties": [
    {
  "name": "let loadingView: UIActivityIndicatorView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "init()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "NewsListLoadingView",
  "superClass": 202,
  "extensions": [
    149
  ]
},{
  "id": 150,
  "typeString": "class",
  "properties": [
    {
  "name": "let reuseIdentifier",
  "type": "type",
  "accessLevel": "internal"
},
    {
  "name": "var isSelected: Bool",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let tagView: MFMTag",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "init(frame: CGRect)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "NewsListTagCell",
  "superClass": 209,
  "extensions": [
    151,
    152
  ]
},{
  "id": 153,
  "typeString": "class",
  "properties": [
    {
  "name": "let viewModel: NewsListViewModel lazy",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var tableView: UITableView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let tableView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let loadingView: NewsListLoadingView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "viewDidLoad()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "viewWillAppear(_ animated: Bool)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "bindViewModel()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "showLoading(_ loading: Bool)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(viewModel: NewsListViewModel)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "NewsListViewController",
  "superClass": 2,
  "extensions": [
    154,
    155,
    156
  ]
},{
  "id": 157,
  "typeString": "protocol",
  "properties": [
    {
  "name": "var data: [NewsListSection]?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var selectedIndexPath: IndexPath?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "set(tags: [String], news: [NewsListItemModel])",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "filter(news: [NewsListItemModel], indexPath: IndexPath)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "resetToOriginalData()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "NewsListViewData"
},{
  "id": 158,
  "typeString": "enum",
  "cases": [
    {
  "name": "tags"
},
    {
  "name": "news"
}
  ],
  "name": "NewsListSection"
},{
  "id": 159,
  "typeString": "class",
  "properties": [
    {
  "name": "var data: [NewsListSection]?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var originalData: [NewsListSection]?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var selectedIndexPath: IndexPath?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "set(tags: [String], news: [NewsListItemModel])",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "filter(news: [NewsListItemModel], indexPath: IndexPath)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "resetToOriginalData()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    157
  ],
  "name": "NewsListViewDataConcrete"
},{
  "id": 160,
  "typeString": "protocol",
  "properties": [
    {
  "name": "var state: Bindable<NewsListViewModelState>",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var viewData: NewsListViewData",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var coordinator: NewsListViewModelDelegate?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "fetchNewsList()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "filter(tag: String, indexPath: IndexPath)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "removeFilter()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "goToNews(_ newsId: Int)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "NewsListViewModel"
},{
  "id": 161,
  "typeString": "protocol",
  "methods": [
    {
  "name": "goToNews(_ newsId: Int)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "NewsListViewModelDelegate"
},{
  "id": 162,
  "typeString": "enum",
  "cases": [
    {
  "name": "initial case loading case success case failure case filter"
}
  ],
  "name": "NewsListViewModelState"
},{
  "id": 163,
  "typeString": "class",
  "properties": [
    {
  "name": "var state: Bindable<NewsListViewModelState>",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var viewData: NewsListViewData",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var service: NewsListService",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var coordinator: NewsListViewModelDelegate?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "fetchNewsList()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "filter(tag: String, indexPath: IndexPath)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "removeFilter()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "goToNews(_ newsId: Int)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    160
  ],
  "name": "NewsListViewModelConcrete"
},{
  "id": 164,
  "typeString": "struct",
  "properties": [
    {
  "name": "let title: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let description: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let score: Int?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "ProfileActivityModel",
  "superClass": 199
},{
  "id": 165,
  "typeString": "class",
  "properties": [
    {
  "name": "var rootViewController: UINavigationController",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var viewModel: ProfileViewModel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let viewController: ProfileViewController",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "start()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(rootViewController: UINavigationController)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    8
  ],
  "name": "ProfileCoordinator"
},{
  "id": 166,
  "typeString": "protocol",
  "methods": [
    {
  "name": "fetchRecentActivities( success: @escaping ([ProfileActivityModel]) -> Void, failure: @escaping (Error) -> Void )",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "ProfileService"
},{
  "id": 167,
  "typeString": "class",
  "methods": [
    {
  "name": "fetchRecentActivities( success: @escaping ([ProfileActivityModel]) -> Void, failure: @escaping (Error) -> Void )",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "ProfileServiceConcrete",
  "superClass": 15
},{
  "id": 168,
  "typeString": "struct",
  "properties": [
    {
  "name": "var endpoint: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var method: HTTPMethod",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var pathParameters: [String]?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let user",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    9
  ],
  "name": "ProfileRequest"
},{
  "id": 169,
  "typeString": "class",
  "properties": [
    {
  "name": "let titleLabelView: UILabel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "init(frame: CGRect)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "ProfileHeaderView",
  "superClass": 202,
  "extensions": [
    170
  ]
},{
  "id": 171,
  "typeString": "class",
  "properties": [
    {
  "name": "let loadingView: UIActivityIndicatorView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "init()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "ProfileLoadingView",
  "superClass": 202,
  "extensions": [
    172
  ]
},{
  "id": 173,
  "typeString": "class",
  "properties": [
    {
  "name": "let reuseIdentifier",
  "type": "type",
  "accessLevel": "internal"
},
    {
  "name": "let titleView: UILabel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let descriptionLabelView: UILabel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let scoreLabelView: UILabel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let dividerView: MFMDivider",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "prepareForReuse()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(style: UITableViewCell.CellStyle, reuseIdentifier: String?)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "ProfileRecentActivitiesCell",
  "superClass": 207,
  "extensions": [
    174,
    175
  ]
},{
  "id": 176,
  "typeString": "class",
  "properties": [
    {
  "name": "let titleLabelView: UILabel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "init(frame: CGRect)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "ProfileRecentActivitiesHeaderView",
  "superClass": 202,
  "extensions": [
    177
  ]
},{
  "id": 178,
  "typeString": "class",
  "properties": [
    {
  "name": "let reuseIdentifier",
  "type": "type",
  "accessLevel": "internal"
},
    {
  "name": "let avatarView: UIImageView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let usernameLabelView: UILabel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let dividerView: MFMDivider",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "init(style: UITableViewCell.CellStyle, reuseIdentifier: String?)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "ProfileUserCell",
  "superClass": 207,
  "extensions": [
    179
  ]
},{
  "id": 180,
  "typeString": "class",
  "properties": [
    {
  "name": "let viewModel: ProfileViewModel lazy",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var tableView: UITableView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let tableView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let loadingView: ProfileLoadingView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let view",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "viewDidLoad()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "viewWillAppear(_ animated: Bool)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "bindViewModel()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "showLoading(_ loading: Bool)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(viewModel: ProfileViewModel)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "ProfileViewController",
  "superClass": 2,
  "extensions": [
    181,
    182
  ]
},{
  "id": 183,
  "typeString": "protocol",
  "properties": [
    {
  "name": "var data: [ProfileSection]?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "set(recentActivities: [ProfileActivityModel])",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "ProfileViewData"
},{
  "id": 184,
  "typeString": "enum",
  "cases": [
    {
  "name": "profile case recentActivities"
}
  ],
  "name": "ProfileSection"
},{
  "id": 185,
  "typeString": "class",
  "properties": [
    {
  "name": "var data: [ProfileSection]?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "set(recentActivities: [ProfileActivityModel])",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    183
  ],
  "name": "ProfileViewDataConcrete"
},{
  "id": 186,
  "typeString": "protocol",
  "properties": [
    {
  "name": "var state: Bindable<ProfileViewModelState>",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var viewData: ProfileViewData",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "fetchRecentActivities()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "ProfileViewModel"
},{
  "id": 187,
  "typeString": "enum",
  "cases": [
    {
  "name": "initial case loading case success case failure"
}
  ],
  "name": "ProfileViewModelState"
},{
  "id": 188,
  "typeString": "class",
  "properties": [
    {
  "name": "var state: Bindable<ProfileViewModelState>",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var viewData: ProfileViewData",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var service: ProfileService",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "fetchRecentActivities()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    186
  ],
  "name": "ProfileViewModelConcrete"
},{
  "id": 189,
  "typeString": "class",
  "properties": [
    {
  "name": "let viewData: TabBarViewData",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let rootViewController: UINavigationController required",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "viewDidLoad()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupTabs()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupAppearance()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(viewData: TabBarViewData, rootViewController: UINavigationController)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "TabBarController",
  "superClass": 210
},{
  "id": 190,
  "typeString": "protocol",
  "properties": [
    {
  "name": "var moviesTitle: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var moviesIcon: UIImage?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var newsTitle: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var newsIcon: UIImage?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var profileTitle: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var profileIcon: UIImage?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "TabBarViewData"
},{
  "id": 191,
  "typeString": "struct",
  "properties": [
    {
  "name": "var moviesTitle: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var moviesIcon: UIImage?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var newsTitle: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var newsIcon: UIImage?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var profileTitle: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var profileIcon: UIImage?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    190
  ],
  "name": "TabBarViewDataConcrete"
},{
  "id": 192,
  "typeString": "class",
  "properties": [
    {
  "name": "var window: UIWindow?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "sceneDidDisconnect(_ scene: UIScene)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "sceneDidBecomeActive(_ scene: UIScene)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "sceneWillResignActive(_ scene: UIScene)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "sceneWillEnterForeground(_ scene: UIScene)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "sceneDidEnterBackground(_ scene: UIScene)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "SceneDelegate",
  "superClass": 196
},{
  "id": 193,
  "typeString": "class",
  "methods": [
    {
  "name": "setUpWithError() throws",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tearDownWithError() throws",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "testExample() throws",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "testPerformanceExample() throws",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "MyFavoriteMoviesTests",
  "superClass": 211
},{
  "id": 194,
  "typeString": "class",
  "methods": [
    {
  "name": "setUpWithError() throws",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tearDownWithError() throws",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "testExample() throws",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "testLaunchPerformance() throws",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "MyFavoriteMoviesUITests",
  "superClass": 211
},{
  "id": 195,
  "typeString": "class",
  "properties": [
    {
  "name": "var runsForEachTargetApplicationUIConfiguration: Bool",
  "type": "type",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "setUpWithError() throws",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "testLaunch() throws",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "MyFavoriteMoviesUITestsLaunchTests",
  "superClass": 211
},{
  "id": 196,
  "typeString": "class",
  "name": "UIResponder"
},{
  "id": 197,
  "typeString": "protocol",
  "name": "UIApplicationDelegate"
},{
  "id": 198,
  "typeString": "class",
  "name": "UIViewController"
},{
  "id": 199,
  "typeString": "class",
  "name": "Codable"
},{
  "id": 200,
  "typeString": "class",
  "name": "Decodable"
},{
  "id": 201,
  "typeString": "class",
  "name": "UIButton"
},{
  "id": 202,
  "typeString": "class",
  "name": "UIView"
},{
  "id": 203,
  "typeString": "class",
  "name": "UITextField"
},{
  "id": 204,
  "typeString": "class",
  "name": "UIStackView"
},{
  "id": 205,
  "typeString": "class",
  "name": "AnyObject"
},{
  "id": 206,
  "typeString": "class",
  "name": "String",
  "extensions": [
    4
  ]
},{
  "id": 207,
  "typeString": "class",
  "name": "UITableViewCell"
},{
  "id": 208,
  "typeString": "class",
  "name": "UICollectionReusableView"
},{
  "id": 209,
  "typeString": "class",
  "name": "UICollectionViewCell"
},{
  "id": 210,
  "typeString": "class",
  "name": "UITabBarController"
},{
  "id": 211,
  "typeString": "class",
  "name": "XCTestCase"
},{
  "id": 212,
  "typeString": "class",
  "name": "Date",
  "extensions": [
    3
  ]
},{
  "id": 213,
  "typeString": "class",
  "name": "UIColor",
  "extensions": [
    5
  ]
},{
  "id": 214,
  "typeString": "class",
  "name": "UIImageView",
  "extensions": [
    6
  ]
},{
  "id": 215,
  "typeString": "protocol",
  "name": "UITextFieldDelegate"
},{
  "id": 216,
  "typeString": "protocol",
  "name": "UIPickerViewDelegate"
},{
  "id": 217,
  "typeString": "protocol",
  "name": "UIPickerViewDataSource"
},{
  "id": 218,
  "typeString": "protocol",
  "name": "UITableViewDelegate"
},{
  "id": 219,
  "typeString": "protocol",
  "name": "UITableViewDataSource"
},{
  "id": 220,
  "typeString": "protocol",
  "name": "UICollectionViewDelegate"
},{
  "id": 221,
  "typeString": "protocol",
  "name": "UICollectionViewDataSource"
},{
  "id": 222,
  "typeString": "protocol",
  "name": "UICollectionViewDelegateFlowLayout"
},{
  "id": 3,
  "typeString": "extension",
  "methods": [
    {
  "name": "get(_ components: Calendar.Component..., calendar: Calendar = Calendar.current) -> DateComponents",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "distanceFromNow() -> String?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "Date"
},{
  "id": 4,
  "typeString": "extension",
  "methods": [
    {
  "name": "toDate() -> Date?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "String"
},{
  "id": 5,
  "typeString": "extension",
  "properties": [
    {
  "name": "var appThemeColor: UIColor",
  "type": "type",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "UIColor"
},{
  "id": 6,
  "typeString": "extension",
  "methods": [
    {
  "name": "setImageFrom(url: String)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setImageFrom(base64String: String)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "UIImageView"
},{
  "id": 11,
  "typeString": "extension",
  "properties": [
    {
  "name": "var headers: HTTPHeaders",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var pathParameters: [String]?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var queryParameters: [String: Any]?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "Request"
},{
  "id": 13,
  "typeString": "extension",
  "methods": [
    {
  "name": "setupViewCode()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "ViewCode"
},{
  "id": 22,
  "typeString": "extension",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    12
  ],
  "extendedEntityName": "MFMTag"
},{
  "id": 26,
  "typeString": "extension",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    12
  ],
  "extendedEntityName": "MFMTextFieldView"
},{
  "id": 28,
  "typeString": "extension",
  "methods": [
    {
  "name": "goToLogin()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    39
  ],
  "extendedEntityName": "CreateAccountCoordinator"
},{
  "id": 34,
  "typeString": "extension",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    12
  ],
  "extendedEntityName": "CreateAccountViewController"
},{
  "id": 35,
  "typeString": "extension",
  "methods": [
    {
  "name": "textField( _ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    215
  ],
  "extendedEntityName": "CreateAccountViewController"
},{
  "id": 60,
  "typeString": "extension",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    12
  ],
  "extendedEntityName": "FactoryCommentaryCell"
},{
  "id": 61,
  "typeString": "extension",
  "methods": [
    {
  "name": "setupCell(avatar: String?, username: String, date: String, commentary: String, showDivider: Bool)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "FactoryCommentaryCell"
},{
  "id": 63,
  "typeString": "extension",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    12
  ],
  "extendedEntityName": "FactoryHeadlineCell"
},{
  "id": 64,
  "typeString": "extension",
  "methods": [
    {
  "name": "setupCell(with text: String)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "FactoryHeadlineCell"
},{
  "id": 66,
  "typeString": "extension",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    12
  ],
  "extendedEntityName": "FactoryImageCell"
},{
  "id": 67,
  "typeString": "extension",
  "methods": [
    {
  "name": "setupCell(with url: String)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "FactoryImageCell"
},{
  "id": 69,
  "typeString": "extension",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    12
  ],
  "extendedEntityName": "FactoryParagraphCell"
},{
  "id": 70,
  "typeString": "extension",
  "methods": [
    {
  "name": "setupCell(with text: String)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "FactoryParagraphCell"
},{
  "id": 72,
  "typeString": "extension",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    12
  ],
  "extendedEntityName": "FactoryReviewCell"
},{
  "id": 73,
  "typeString": "extension",
  "methods": [
    {
  "name": "setupCell(avatar: String?, username: String, score: Int, review: String, showDivider: Bool)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "FactoryReviewCell"
},{
  "id": 75,
  "typeString": "extension",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    12
  ],
  "extendedEntityName": "FactorySectionHeaderView"
},{
  "id": 77,
  "typeString": "extension",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    12
  ],
  "extendedEntityName": "FactorySubtitleCell"
},{
  "id": 78,
  "typeString": "extension",
  "methods": [
    {
  "name": "setupCell(with subtitle: String)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "FactorySubtitleCell"
},{
  "id": 80,
  "typeString": "extension",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    12
  ],
  "extendedEntityName": "FactoryTitleCell"
},{
  "id": 81,
  "typeString": "extension",
  "methods": [
    {
  "name": "setupCell(with title: String)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "FactoryTitleCell"
},{
  "id": 83,
  "typeString": "extension",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    12
  ],
  "extendedEntityName": "FactoryWriteCommentaryCell"
},{
  "id": 84,
  "typeString": "extension",
  "methods": [
    {
  "name": "setupCell(action: @escaping (String) -> Void)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "FactoryWriteCommentaryCell"
},{
  "id": 86,
  "typeString": "extension",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    12
  ],
  "extendedEntityName": "FactoryWriteReviewCell"
},{
  "id": 87,
  "typeString": "extension",
  "methods": [
    {
  "name": "setupCell(action: @escaping (String, Int) -> Void)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "FactoryWriteReviewCell"
},{
  "id": 88,
  "typeString": "extension",
  "methods": [
    {
  "name": "numberOfComponents(in pickerView: UIPickerView) -> Int",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    216,
    217
  ],
  "extendedEntityName": "FactoryWriteReviewCell"
},{
  "id": 90,
  "typeString": "extension",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    12
  ],
  "extendedEntityName": "FactoryViewController"
},{
  "id": 91,
  "typeString": "extension",
  "methods": [
    {
  "name": "numberOfSections(in tableView: UITableView) -> Int",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    218,
    219
  ],
  "extendedEntityName": "FactoryViewController"
},{
  "id": 96,
  "typeString": "extension",
  "methods": [
    {
  "name": "goToCreateAccount()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "goToHome()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    107
  ],
  "extendedEntityName": "LoginCoordinator"
},{
  "id": 102,
  "typeString": "extension",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    12
  ],
  "extendedEntityName": "LoginViewController"
},{
  "id": 103,
  "typeString": "extension",
  "methods": [
    {
  "name": "textField( _ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    215
  ],
  "extendedEntityName": "LoginViewController"
},{
  "id": 112,
  "typeString": "extension",
  "methods": [
    {
  "name": "goToMovie(_ movieId: Int)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    130
  ],
  "extendedEntityName": "MoviesListCoordinator"
},{
  "id": 117,
  "typeString": "extension",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    12
  ],
  "extendedEntityName": "MoviesListHeaderView"
},{
  "id": 119,
  "typeString": "extension",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    12
  ],
  "extendedEntityName": "MoviesListItemCell"
},{
  "id": 120,
  "typeString": "extension",
  "methods": [
    {
  "name": "setupCell(with model: MoviesListItemModel )",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "MoviesListItemCell"
},{
  "id": 122,
  "typeString": "extension",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    12
  ],
  "extendedEntityName": "MoviesListLoadingView"
},{
  "id": 124,
  "typeString": "extension",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    12
  ],
  "extendedEntityName": "MoviesListViewController"
},{
  "id": 125,
  "typeString": "extension",
  "methods": [
    {
  "name": "numberOfSections(in collectionView: UICollectionView) -> Int",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    220,
    221,
    222
  ],
  "extendedEntityName": "MoviesListViewController"
},{
  "id": 136,
  "typeString": "extension",
  "methods": [
    {
  "name": "goToNews(_ newsId: Int)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    161
  ],
  "extendedEntityName": "NewsListCoordinator"
},{
  "id": 142,
  "typeString": "extension",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    12
  ],
  "extendedEntityName": "NewsListFilterCell"
},{
  "id": 144,
  "typeString": "extension",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    12
  ],
  "extendedEntityName": "NewsListHeaderView"
},{
  "id": 146,
  "typeString": "extension",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    12
  ],
  "extendedEntityName": "NewsListItemCell"
},{
  "id": 147,
  "typeString": "extension",
  "methods": [
    {
  "name": "setupCell(with model: NewsListItemModel, showDivider: Bool)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "NewsListItemCell"
},{
  "id": 149,
  "typeString": "extension",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    12
  ],
  "extendedEntityName": "NewsListLoadingView"
},{
  "id": 151,
  "typeString": "extension",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    12
  ],
  "extendedEntityName": "NewsListTagCell"
},{
  "id": 152,
  "typeString": "extension",
  "methods": [
    {
  "name": "setupCell(label: String)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "NewsListTagCell"
},{
  "id": 154,
  "typeString": "extension",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    12
  ],
  "extendedEntityName": "NewsListViewController"
},{
  "id": 155,
  "typeString": "extension",
  "methods": [
    {
  "name": "numberOfSections(in tableView: UITableView) -> Int",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    218,
    219
  ],
  "extendedEntityName": "NewsListViewController"
},{
  "id": 156,
  "typeString": "extension",
  "methods": [
    {
  "name": "collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    220,
    221,
    222
  ],
  "extendedEntityName": "NewsListViewController"
},{
  "id": 170,
  "typeString": "extension",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    12
  ],
  "extendedEntityName": "ProfileHeaderView"
},{
  "id": 172,
  "typeString": "extension",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    12
  ],
  "extendedEntityName": "ProfileLoadingView"
},{
  "id": 174,
  "typeString": "extension",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    12
  ],
  "extendedEntityName": "ProfileRecentActivitiesCell"
},{
  "id": 175,
  "typeString": "extension",
  "methods": [
    {
  "name": "setupCell(activity: ProfileActivityModel, showDivider: Bool)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "ProfileRecentActivitiesCell"
},{
  "id": 177,
  "typeString": "extension",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    12
  ],
  "extendedEntityName": "ProfileRecentActivitiesHeaderView"
},{
  "id": 179,
  "typeString": "extension",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    12
  ],
  "extendedEntityName": "ProfileUserCell"
},{
  "id": 181,
  "typeString": "extension",
  "methods": [
    {
  "name": "addSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupConstraints()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupStyle()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    12
  ],
  "extendedEntityName": "ProfileViewController"
},{
  "id": 182,
  "typeString": "extension",
  "methods": [
    {
  "name": "numberOfSections(in tableView: UITableView) -> Int",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    218,
    219
  ],
  "extendedEntityName": "ProfileViewController"
}] 