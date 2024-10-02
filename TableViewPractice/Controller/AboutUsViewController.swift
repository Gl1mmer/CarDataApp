//
//  AboutUsViewController.swift
//  TableViewPractice
//
//  Created by Amankeldi Zhetkergen on 29.09.2024.
//

import UIKit

class AboutUsViewController: UIViewController {
    
    private let scrollView: UIScrollView = {
        let scv = UIScrollView()
        scv.translatesAutoresizingMaskIntoConstraints = false
        return scv
    }()
    
    private let stackView: UIStackView = {
        let sv = UIStackView()
        sv.axis = .vertical
        sv.spacing = 16
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    private let topImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "details")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let label1: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "About us"
        label.font = .systemFont(ofSize: 32 , weight: .bold)
        label.textAlignment = .center
        label.textColor = .black
        return label
    }()
    
    let label2: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Welcome to [Your App Name], a simple and engaging app designed to make exploring cars easier and more fun! Our app allows you to quickly browse through different car models, with each button tap opening up a detailed page showcasing the car's name, an image, and a brief description."
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 18 , weight: .regular)
        label.textAlignment = .center
        label.textColor = .black
        return label
    }()
    
    let label3: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "At [Your App Name], our goal is to provide users with a seamless and intuitive experience as they discover new cars. Whether you’re a car enthusiast or just curious about the different models, our app is built to give you quick and informative insights."
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 18 , weight: .regular)
        label.textAlignment = .center
        label.textColor = .black
        return label
    }()
    
    let label4: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "This app is my first project, a task assigned by my mentor, and it reflects my passion for learning and developing great user experiences. Every button click, car detail, and feature is designed with care to ensure simplicity and usability. This is just the beginning of my journey, and I’m excited to continue learning and building better tools for users like you."
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 18 , weight: .regular)
        label.textAlignment = .center
        label.textColor = .black
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    private func setupUI() {
        view.addSubview(scrollView)
        scrollView.addSubview(stackView)
        stackView.addArrangedSubview(topImage)
        stackView.addArrangedSubview(label1)
        stackView.addArrangedSubview(label2)
        stackView.addArrangedSubview(label3)
        stackView.addArrangedSubview(label4)
        
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
        let topImageConstraints = [
            topImage.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 10),
            topImage.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -10),
            topImage.topAnchor.constraint(equalTo: stackView.topAnchor),
            topImage.heightAnchor.constraint(equalToConstant: 125)
        ]
        let label2Constraints = [
            label2.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 10),
            label2.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -10)
        ]
        let label3Constraints = [
            label3.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 10),
            label3.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -10)
        ]
        let label4Constraints = [
            label4.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 10),
            label4.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -10)
        ]
        
        NSLayoutConstraint.activate(topImageConstraints)
        NSLayoutConstraint.activate(scrollViewConstraints)
        NSLayoutConstraint.activate(stackViewConstraints)
        NSLayoutConstraint.activate(label2Constraints)
        NSLayoutConstraint.activate(label3Constraints)
        NSLayoutConstraint.activate(label4Constraints)
    }
}
