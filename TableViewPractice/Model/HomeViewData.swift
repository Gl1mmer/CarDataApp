//
//  HomeViewData.swift
//  TableViewPractice
//
//  Created by Amankeldi Zhetkergen on 29.09.2024.
//

import UIKit

struct Item {
    let logoImage : UIImage
    let carTitle : String
}

struct HomeViewData {
    let cars = [
        Item(logoImage: UIImage(named: "Bmw")!, carTitle: "Bmw"),
        Item(logoImage: UIImage(named: "Mercedes")!, carTitle: "Mercedes"),
        Item(logoImage: UIImage(named: "Toyota")!, carTitle: "Toyota"),
        Item(logoImage: UIImage(named: "Ford")!, carTitle: "Ford")
    ]
}
