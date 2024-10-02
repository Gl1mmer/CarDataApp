//
//  CarViewData.swift
//  TableViewPractice
//
//  Created by Amankeldi Zhetkergen on 29.09.2024.
//

import UIKit

struct Car {
    let image: UIImage
    let mark: String
    let carDescription: String
}

struct CarViewData {
    let carData = [
        Car(image: UIImage(named: "C1")!,
            mark: "BMW",
            carDescription: Constants().bmwDescription),
        Car(image: UIImage(named: "C2")!, mark: "Mercedes Benz", carDescription: Constants().mercedesDescription ),
        Car(image: UIImage(named: "C3")!, mark: "Toyota", carDescription: Constants().toyotaDescription),
        Car(image: UIImage(named: "C4")!, mark: "Ford", carDescription: Constants().fordDescription)
    ]
}

struct Constants {
    let bmwDescription: String = "Bayerische Motoren Werke AG, commonly abbreviated to BMW (German pronunciation: [ˌbeːʔɛmˈveː] ⓘ), is a German multinational manufacturer of luxury vehicles and motorcycles headquartered in Munich, Bavaria, Germany. The company was founded in 1916 as a manufacturer of aircraft engines, which it produced from 1917 to 1918 and again from 1933 to 1945 creating engines for aircraft that were used in the Second World War."
    let mercedesDescription = "Mercedes-Benz Group AG (formerly Daimler-Benz, DaimlerChrysler and Daimler) is a German multinational automotive company headquartered in Stuttgart, Baden-Württemberg, Germany. It is one of the world's leading car manufacturers. Daimler-Benz was formed with the merger of Benz & Cie., the world's oldest car company,[4] and Daimler Motoren Gesellschaft in 1926. The company was renamed DaimlerChrysler upon the acquisition of the American automobile manufacturer, Chrysler Corporation in 1998, it was renamed to Daimler upon the divestment of Chrysler in 2007. In 2021, Daimler was the second-largest German automaker and the sixth-largest worldwide by production. In February 2022, Daimler was renamed Mercedes-Benz Group as part of a transaction that spun-off its commercial vehicle segment as an independent company, Daimler Truck."
    let toyotaDescription = "Toyota Motor Corporation (Japanese: トヨタ自動車株式会社, Hepburn: Toyota Jidōsha kabushikigaisha, IPA: [toꜜjota], English: /tɔɪˈjoʊtə/, commonly known as simply Toyota) is a Japanese multinational automotive manufacturer headquartered in Toyota City, Aichi, Japan. It was founded by Kiichiro Toyoda and incorporated on August 28, 1937. Toyota is the largest automobile manufacturer in the world, producing about 10 million vehicles per year."
    let fordDescription = "Ford Motor Company (commonly known as Ford) is an American multinational automobile manufacturer headquartered in Dearborn, Michigan, United States. It was founded by Henry Ford and incorporated on June 16, 1903. The company sells automobiles and commercial vehicles under the Ford brand, and luxury cars under its Lincoln brand. The company is listed on the New York Stock Exchange and is controlled by the Ford family. They have minority ownership but a plurality of the voting power.[5][7]"
}
