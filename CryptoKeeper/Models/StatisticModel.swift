//
//  StatisticModel.swift
//  CryptoKeeper
//
//  Created by Daulet Ashikbayev on 07.11.2022.
//

import Foundation

struct StatisticModel: Identifiable {
    let id = UUID().uuidString
    let title: String
    let value: String
    let percentageChange: Double?   
}
