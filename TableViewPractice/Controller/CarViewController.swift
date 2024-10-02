//
//  MBViewController.swift
//  TableViewPractice
//
//  Created by Amankeldi Zhetkergen on 27.09.2024.
//

import UIKit


class CarViewController: UIViewController{
    
    var carOrder : Int?
    var data = CarViewData()
    
    private let carLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Car name is not given"
        label.font = .systemFont(ofSize: 40 , weight: .bold)
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()
    
    private let carImageView: UIImageView = {
        let imageV = UIImageView()
        imageV.translatesAutoresizingMaskIntoConstraints = false
        imageV.image = UIImage(named: "questionmark")
        return imageV
    }()
    
    private let carDesciptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Car Description is not given"
        label.font = .systemFont(ofSize: 18 , weight: .bold)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = .lightText
        return label
    }()
    
    private let stackView: UIStackView = {
        let sv = UIStackView()
        sv.axis = .vertical
        sv.spacing = 14
        sv.backgroundColor = .black
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    private let scrollView: UIScrollView = {
        let scv = UIScrollView()
        scv.translatesAutoresizingMaskIntoConstraints = false
        scv.backgroundColor = .black
        return scv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let index = carOrder {
            carLabel.text = data.carData[index].mark
            carImageView.image = data.carData[index].image
            carDesciptionLabel.text = data.carData[index].carDescription
        }
        
        setupUI()
    }
    
    private func setupUI(){
        view.backgroundColor = .black
        view.addSubview(scrollView)
        scrollView.addSubview(stackView)
        stackView.addArrangedSubview(carLabel)
        stackView.addArrangedSubview(carImageView)
        stackView.addArrangedSubview(carDesciptionLabel)
        
        let scrollViewConstraints = [
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ]
        let stackViewConstraints = [
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ]
        let carImageViewConsraints = [
            carImageView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 10),
            carImageView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -10),
            carImageView.heightAnchor.constraint(equalToConstant: 300)
        ]
        let carLabelConstraints = [
            carLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor)
        ]
        let carDesciptionLabelConstraints = [
            carDesciptionLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 10),
            carDesciptionLabel.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -10),
        ]
        
        NSLayoutConstraint.activate(scrollViewConstraints)
        NSLayoutConstraint.activate(stackViewConstraints)
        NSLayoutConstraint.activate(carImageViewConsraints)
        NSLayoutConstraint.activate(carDesciptionLabelConstraints)
        NSLayoutConstraint.activate(carLabelConstraints)
    }
}
