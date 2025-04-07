//
//  MoviesListItemCell.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 04/04/25.
//

import UIKit

class MoviesListItemCell: UICollectionViewCell {
    // MARK: - Properties
    static let reuseIdentifier = "MoviesListItemCell"
    
    override var isSelected: Bool {
        didSet {
            UIView.animate(withDuration: 0.3) {
                self.backgroundColor = self.isSelected ? UIColor(red: 60/255, green: 63/255, blue: 73/255, alpha: 1.0) : .appThemeColor
            }
        }
    }
    
    // MARK: - Views
    let image: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let titleLabelView: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 17, weight: .bold)
        view.textAlignment = .center
        view.numberOfLines = 3
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let releaseYearLabelView: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 14, weight: .regular)
        view.numberOfLines = 0
        view.translatesAutoresizingMaskIntoConstraints = false
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
extension MoviesListItemCell: ViewCode {
    func addSubviews() {
        addSubview(image)
        addSubview(titleLabelView)
        addSubview(releaseYearLabelView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate(
            [
                image.topAnchor.constraint(equalTo: topAnchor, constant: 20),
                image.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
                image.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
                image.heightAnchor.constraint(equalToConstant: 200),
                
                titleLabelView.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 20),
                titleLabelView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
                titleLabelView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
                
                releaseYearLabelView.topAnchor.constraint(equalTo: titleLabelView.bottomAnchor),
                releaseYearLabelView.centerXAnchor.constraint(equalTo: centerXAnchor),
                releaseYearLabelView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20)
            ]
        )
    }
    
    func setupStyle() {
        backgroundColor = .appThemeColor
    }
}

// MARK: - Extension
extension MoviesListItemCell {
    func setupCell(with model: MoviesListItemModel ) {
        image.setImageFrom(url: model.poster)
        titleLabelView.text = model.title
        
        let releaseYear = model.releaseDate
        
        let start = releaseYear.index(releaseYear.startIndex, offsetBy: 0)
        let end = releaseYear.index(releaseYear.endIndex, offsetBy: -17)
        let range = start..<end
        
        releaseYearLabelView.text = String(releaseYear[range])
    }
}
