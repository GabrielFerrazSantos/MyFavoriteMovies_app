//
//  NewsListViewController.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 25/03/25.
//

import UIKit

class NewsListViewController: Controller {
    // MARK: - Properties
    let viewModel: NewsListViewModel
    
    // MARK: - Views
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        tableView.tableHeaderView = NewsListHeaderView(frame: .init(x: 0, y: 0, width: view.bounds.size.width, height: 64))
        tableView.register(NewsListFilterCell.self, forCellReuseIdentifier: NewsListFilterCell.reuseIdentifier)
        tableView.register(NewsListItemCell.self, forCellReuseIdentifier: NewsListItemCell.reuseIdentifier)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    let loadingView: NewsListLoadingView = {
        let view = NewsListLoadingView()
        view.isHidden = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // MARK: - Initializers
    init(viewModel: NewsListViewModel) {
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
        viewModel.fetchNewsList()
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
                
            case .filter:
                self.tableView.reloadSections(.init(integer: 1), with: .automatic)
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
extension NewsListViewController: ViewCode {
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
extension NewsListViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        guard let data = viewModel.viewData.data else { return 0 }
        
        return data.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let data = viewModel.viewData.data else { return 0 }
        
        if case .news(let news) = data[section] {
            return news.count
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let data = viewModel.viewData.data else { return UITableViewCell() }
        
        if case .tags = data[indexPath.section] {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: NewsListFilterCell.reuseIdentifier, for: indexPath) as? NewsListFilterCell else {
                return UITableViewCell()
            }
            
            cell.setCollectionViewDataSourceDelegate(dataSourceDelegate: self)
            
            return cell
        } else if case .news(let news) = data[indexPath.section] {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: NewsListItemCell.reuseIdentifier, for: indexPath) as? NewsListItemCell else {
                return UITableViewCell()
            }
            
            cell.setupCell(with: news[indexPath.row], showDivider: indexPath.row == news.count - 1 ? false : true)
            
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        nil
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        .zero
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        nil
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        .zero
    }
}

// MARK: - Collection view
extension NewsListViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let data = viewModel.viewData.data else { return 0 }
        
        if case .tags(let tags) = data[section] {
            return tags.count
        }
        
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let data = viewModel.viewData.data,
              let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NewsListTagCell.reuseIdentifier, for: indexPath) as? NewsListTagCell else {
            return UICollectionViewCell()
        }
        
        if case .tags(let tags) = data[indexPath.section] {
            cell.setupCell(label: tags[indexPath.row])
            
            if let selectedIndexPath = viewModel.viewData.selectedIndexPath, selectedIndexPath == indexPath {
                collectionView.selectItem(at: selectedIndexPath, animated: true, scrollPosition: .centeredHorizontally)
            }
        }
                
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.selectItem(at: indexPath, animated: true, scrollPosition: .centeredHorizontally)
        
        guard let data = viewModel.viewData.data else { return }
        
        if case .tags(let tags) = data[indexPath.section] {
            viewModel.filter(tag: tags[indexPath.row], indexPath: indexPath)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        guard let cell = collectionView.cellForItem(at: indexPath) as? NewsListTagCell else { return true }
        
        if cell.isSelected {
            collectionView.deselectItem(at: indexPath, animated: true)
            viewModel.removeFilter()
            
            return false
        }
        
        return true
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if let data = viewModel.viewData.data, case .tags(let tags) = data[indexPath.section] {
            let label = UILabel()
            label.text = tags[indexPath.row]
            label.font = .systemFont(ofSize: 11, weight: .semibold)
            return CGSize(width: label.intrinsicContentSize.width + 16, height: label.intrinsicContentSize.height + 16)
        } else {
            return .zero
        }
    }
}
