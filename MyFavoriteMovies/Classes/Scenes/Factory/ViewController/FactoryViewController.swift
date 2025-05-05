//
//  FactoryViewController.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 01/05/25.
//

import UIKit

class FactoryViewController: Controller {
    // MARK: - Properties
    let viewModel: FactoryViewModel
    
    // MARK: - Views
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        tableView.dataSource = self
        tableView.delegate = self
        tableView.bouncesVertically = false
        tableView.register(FactoryTitleCell.self, forCellReuseIdentifier: FactoryTitleCell.reuseIdentifier)
        tableView.register(FactoryHeadlineCell.self, forCellReuseIdentifier: FactoryHeadlineCell.reuseIdentifier)
        tableView.register(FactoryParagraphCell.self, forCellReuseIdentifier: FactoryParagraphCell.reuseIdentifier)
        tableView.register(FactorySubtitleCell.self, forCellReuseIdentifier: FactorySubtitleCell.reuseIdentifier)
        tableView.register(FactoryImageCell.self, forCellReuseIdentifier: FactoryImageCell.reuseIdentifier)
        tableView.register(FactoryWriteReviewCell.self, forCellReuseIdentifier: FactoryWriteReviewCell.reuseIdentifier)
        tableView.register(FactoryReviewCell.self, forCellReuseIdentifier: FactoryReviewCell.reuseIdentifier)
        tableView.register(FactoryWriteCommentaryCell.self, forCellReuseIdentifier: FactoryWriteCommentaryCell.reuseIdentifier)
        tableView.register(FactoryCommentaryCell.self, forCellReuseIdentifier: FactoryCommentaryCell.reuseIdentifier)
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
    init(viewModel: FactoryViewModel) {
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
        viewModel.fetchData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
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
                
            case .reloadReviewOrCommentary:
                self.tableView.reloadSections(IndexSet(integer: 1), with: .automatic)
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
extension FactoryViewController: ViewCode {
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
extension FactoryViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        guard let data = viewModel.data else { return 0 }
        
        return data.sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let data = viewModel.data else { return 0 }
        
        return data.sections[section].data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let data = viewModel.data else { return UITableViewCell() }
        
        switch data.sections[indexPath.section].data[indexPath.row] {
        case .title(let title):
            if let cell = tableView.dequeueReusableCell(withIdentifier: FactoryTitleCell.reuseIdentifier, for: indexPath) as? FactoryTitleCell {
                cell.setupCell(with: title)
                return cell
            }
            
        case .headline(let headline):
            if let cell = tableView.dequeueReusableCell(withIdentifier: FactoryHeadlineCell.reuseIdentifier, for: indexPath) as? FactoryHeadlineCell {
                cell.setupCell(with: headline)
                return cell
            }
            
        case .paragraph(let paragraph):
            if let cell = tableView.dequeueReusableCell(withIdentifier: FactoryParagraphCell.reuseIdentifier, for: indexPath) as? FactoryParagraphCell {
                cell.setupCell(with: paragraph)
                return cell
            }
            
        case .subtitle(let subtitle):
            if let cell = tableView.dequeueReusableCell(withIdentifier: FactorySubtitleCell.reuseIdentifier, for: indexPath) as? FactorySubtitleCell {
                cell.setupCell(with: subtitle)
                return cell
            }
            
        case .image(let url):
            if let cell = tableView.dequeueReusableCell(withIdentifier: FactoryImageCell.reuseIdentifier, for: indexPath) as? FactoryImageCell {
                cell.setupCell(with: url)
                return cell
            }
            
        case .imageCarousel(let urls):
            return UITableViewCell()
            
        case .writeReview:
            if let cell = tableView.dequeueReusableCell(withIdentifier: FactoryWriteReviewCell.reuseIdentifier, for: indexPath) as? FactoryWriteReviewCell {
                cell.setupCell { review, score in
                    self.viewModel.sendReview(review: review, score: score)
                }
                return cell
            }
            
        case .review(let review):
            if let cell = tableView.dequeueReusableCell(withIdentifier: FactoryReviewCell.reuseIdentifier, for: indexPath) as? FactoryReviewCell {
                cell.setupCell(
                    avatar: review.avatar,
                    username: review.username,
                    score: review.score,
                    review: review.review,
                    showDivider: indexPath.row == data.sections[indexPath.section].data.count - 1 ? false : true
                )
                return cell
            }
            
        case .writeCommentary:
            if let cell = tableView.dequeueReusableCell(withIdentifier: FactoryWriteCommentaryCell.reuseIdentifier, for: indexPath) as? FactoryWriteCommentaryCell {
                cell.setupCell { commentary in
                    self.viewModel.sendCommentary(commentary: commentary)
                }
                return cell
            }
            
        case .commentary(let commentary):
            if let cell = tableView.dequeueReusableCell(withIdentifier: FactoryCommentaryCell.reuseIdentifier, for: indexPath) as? FactoryCommentaryCell {
                cell.setupCell(
                    avatar: commentary.avatar,
                    username: commentary.username,
                    date: commentary.date,
                    commentary: commentary.commentary,
                    showDivider: indexPath.row == data.sections[indexPath.section].data.count - 1 ? false : true
                )
                return cell
            }
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let data = viewModel.data else { return nil }
        
        switch data.sections[section].type {
            
        case .article:
            return nil
            
        case .commentaries:
            return FactorySectionHeaderView(type: .commentaries)
            
        case .reviews:
            return FactorySectionHeaderView(type: .reviews)
        }
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        nil
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        .zero
    }
}
