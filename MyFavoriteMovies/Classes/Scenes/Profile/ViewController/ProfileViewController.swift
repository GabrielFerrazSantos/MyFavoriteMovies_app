//
//  ProfileViewController.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 25/03/25.
//

import UIKit

class ProfileViewController: Controller {
    // MARK: - Properties
    let viewModel: ProfileViewModel
    
    // MARK: - Views
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        tableView.tableHeaderView = ProfileHeaderView(frame: .init(x: 0, y: 0, width: view.bounds.size.width, height: 64))
        tableView.register(ProfileUserCell.self, forCellReuseIdentifier: ProfileUserCell.reuseIdentifier)
        tableView.register(ProfileRecentActivitiesCell.self, forCellReuseIdentifier: ProfileRecentActivitiesCell.reuseIdentifier)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.bouncesVertically = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    let loadingView: ProfileLoadingView = {
        let view = ProfileLoadingView()
        view.isHidden = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // MARK: - Initializers
    init(viewModel: ProfileViewModel) {
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
        viewModel.fetchRecentActivities()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    // MARK: - Bind
    func bindViewModel() {
        viewModel.state.bind { state in
            switch state {
            case .initial:
                break
                
            case .loading:
                self.showLoading(true)
                
            case .success:
                self.tableView.reloadData()
                self.showLoading(false)
                
            case .failure:
                break
            }
        }
    }
    
    // MARK: - Functions
    func showLoading(_ loading: Bool) {
        if loading {
            loadingView.isHidden = false
        } else {
            loadingView.isHidden = true
        }
    }
}

// MARK: - View Code
extension ProfileViewController: ViewCode {
    func addSubviews() {
        view.addSubview(loadingView)
        view.addSubview(tableView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate(
            [
                loadingView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                loadingView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                loadingView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                loadingView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
                
                tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            ]
        )
    }
    
    func setupStyle() {
        view.backgroundColor = .appThemeColor
    }
}

// MARK: - Table view
extension ProfileViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        guard let data = viewModel.viewData.data else { return 0 }
        
        return data.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let data = viewModel.viewData.data else { return 0 }
        
        if case .recentActivities(let recentActivities) = data[section] {
            return recentActivities.count
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let data = viewModel.viewData.data else { return UITableViewCell() }
                
        switch data[indexPath.section] {
        case .profile:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ProfileUserCell.reuseIdentifier, for: indexPath) as? ProfileUserCell else {
                return UITableViewCell()
            }
                        
            return cell
            
        case .recentActivities(let activities):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ProfileRecentActivitiesCell.reuseIdentifier, for: indexPath) as? ProfileRecentActivitiesCell else {
                return UITableViewCell()
            }
            
            cell.setupCell(
                activity: activities[indexPath.row],
                showDivider: indexPath.row == activities.count - 1 ? false : true
            )
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let data = viewModel.viewData.data else { return nil }
        
        if case .recentActivities = data[section] {
            return ProfileRecentActivitiesHeaderView()
        } else {
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        nil
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        .zero
    }
}
