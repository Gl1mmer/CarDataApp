//
//  CustomCell.swift
//  TableViewPractice
//
//  Created by Amankeldi Zhetkergen on 27.09.2024.
//

import UIKit

final class CustomCell: UITableViewCell {
    
    static let identifier = String(describing: CustomCell.self)
    
    private let logoImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(systemName: "questionMark")
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.tintColor = .label
        return iv
    }()
    
    private let carNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 24, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "No text inserted yet"
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
        
        self.accessoryType = .disclosureIndicator
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(item: HomeViewData, index: Int) {
        logoImageView.image = item.cars[index].logoImage
        carNameLabel.text = item.cars[index].carTitle
    }
    
    private func setupUI() {
        contentView.addSubview(logoImageView)
        contentView.addSubview(carNameLabel)
        
        let logoImageViewConstraint = [
            logoImageView.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor),
            logoImageView.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor),
            logoImageView.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor),
            logoImageView.widthAnchor.constraint(equalToConstant: 90),
            logoImageView.heightAnchor.constraint(equalToConstant: 90),
        ]
        let carNameLabelConstraint = [
            carNameLabel.leadingAnchor.constraint(equalTo: logoImageView.trailingAnchor, constant: 16),
            carNameLabel.trailingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.trailingAnchor, constant: -12),
            carNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            carNameLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ]
        
        NSLayoutConstraint.activate(logoImageViewConstraint)
        NSLayoutConstraint.activate(carNameLabelConstraint)
    }
}
