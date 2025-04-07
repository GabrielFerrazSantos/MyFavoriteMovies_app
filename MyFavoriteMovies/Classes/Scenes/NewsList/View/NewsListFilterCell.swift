//
//  NewsTagsCell.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 30/03/25.
//

import UIKit

class NewsListFilterCell: UITableViewCell {
    // MARK: - Properties
    static let reuseIdentifier = "NewsListFilterCell"
    
    // MARK: - Views
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.register(NewsListTagCell.self, forCellWithReuseIdentifier: NewsListTagCell.reuseIdentifier)
        view.showsHorizontalScrollIndicator = false
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
    func setCollectionViewDataSourceDelegate(dataSourceDelegate: UICollectionViewDataSource & UICollectionViewDelegate) {
        collectionView.delegate = dataSourceDelegate
        collectionView.dataSource = dataSourceDelegate
        collectionView.reloadData()
    }
}

// MARK: - View Code
extension NewsListFilterCell: ViewCode {
    func addSubviews() {
        contentView.addSubview(collectionView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate(
            [
                collectionView.topAnchor.constraint(equalTo: contentView.topAnchor),
                collectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
                collectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
                collectionView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
            ]
        )
    }
    
    func setupStyle() {
        contentView.backgroundColor = .appThemeColor
        collectionView.backgroundColor = .appThemeColor
    }
}
