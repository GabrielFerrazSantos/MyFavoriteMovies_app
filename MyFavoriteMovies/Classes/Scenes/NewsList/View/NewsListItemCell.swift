//
//  NewsCell.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 25/03/25.
//

import UIKit

class NewsListItemCell: UITableViewCell {
    // MARK: - Properties
    static let reuseIdentifier = "NewsListItemCell"
    
    // MARK: - Views
    let image: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let informationsView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.distribution = .fill
        view.spacing = 20
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let titleLabelView: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 17, weight: .bold)
        view.numberOfLines = 0
        return view
    }()
    
    let descriptionLabelView: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 14, weight: .regular)
        view.numberOfLines = 0
        return view
    }()
    
    let dateLabelView: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 12, weight: .regular)
        view.numberOfLines = 1
        return view
    }()
    
    let tagsView: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.distribution = .fillProportionally
        view.spacing = 8
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let dividerView: MFMDivider = {
        let view = MFMDivider()
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
    
    // MARK: - Life Cycle
    override func prepareForReuse() {
        super.prepareForReuse()
        tagsView.subviews.forEach { view in
            view.removeFromSuperview()
        }
        
        dividerView.isHidden = false
    }
}

// MARK: - View Code
extension NewsListItemCell: ViewCode {
    func addSubviews() {
        addSubview(image)
        addSubview(informationsView)
        informationsView.addArrangedSubview(titleLabelView)
        informationsView.addArrangedSubview(descriptionLabelView)
        informationsView.addArrangedSubview(dateLabelView)
        addSubview(tagsView)
        addSubview(dividerView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate(
            [
                image.topAnchor.constraint(equalTo: topAnchor, constant: 20),
                image.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
                image.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
                image.heightAnchor.constraint(equalToConstant: 200),
                
                informationsView.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 20),
                informationsView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
                informationsView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
                
                tagsView.topAnchor.constraint(equalTo: informationsView.bottomAnchor, constant: 20),
                tagsView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
                
                dividerView.topAnchor.constraint(equalTo: tagsView.bottomAnchor, constant: 20),
                dividerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
                dividerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
                dividerView.bottomAnchor.constraint(equalTo: bottomAnchor)
            ]
        )
    }
    
    func setupStyle() {
        backgroundColor = .clear
    }
}

// MARK: - Extension
extension NewsListItemCell {
    func setupCell(with model: NewsListItemModel, showDivider: Bool) {
        image.setImageFrom(url: model.image)
        titleLabelView.text = model.title
        descriptionLabelView.text = model.headline
        
        if let date = model.date.toDate()?.distanceFromNow() {
            dateLabelView.text = "\(date) \(String(localized: "Ago"))"
        }
        
        model.tags.forEach { tag in
            tagsView.addArrangedSubview(MFMTag(label: tag, size: .small))
        }
        
        if !showDivider {
            dividerView.isHidden = true
        }
    }
}
