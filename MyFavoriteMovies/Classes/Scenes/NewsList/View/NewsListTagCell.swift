//
//  NewsListTagCell.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 30/03/25.
//

import UIKit

class NewsListTagCell: UICollectionViewCell {
    // MARK: - Properties
    static let reuseIdentifier = "NewsListTagCell"
    
    override var isSelected: Bool {
        didSet {
            UIView.animate(withDuration: 0.3) {
                self.tagView.backgroundColor = self.isSelected ? .blue : .systemGray5
            }
        }
    }
    
    let tagView: MFMTag = {
        let view = MFMTag(label: "", size: .medium)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isUserInteractionEnabled = false
        return view
    }()
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewCode()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - View Code
extension NewsListTagCell: ViewCode {
    func addSubviews() {
        addSubview(tagView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate(
            [
                tagView.topAnchor.constraint(equalTo: topAnchor),
                tagView.leadingAnchor.constraint(equalTo: leadingAnchor),
                tagView.trailingAnchor.constraint(equalTo: trailingAnchor),
                tagView.bottomAnchor.constraint(equalTo: bottomAnchor)
            ]
        )
    }
    
    func setupStyle() { }
}

// MARK: - Extension
extension NewsListTagCell {
    func setupCell(label: String) {
        tagView.labelView.text = label
    }
}
