//
//  CoinDetailsViewModel.swift
//  CryptoKeeper
//
//  Created by Daulet Ashikbayev on 07.11.2022.
//

import Foundation
import SwiftUI

class CoinDetailsViewModel {
    
    private let coin: Coins
    
    // chart config
    var chartData = [ChartData]()
    var startDate = Date()
    var endDate = Date()
    var minPrice = 0.0
    var maxPrice = 0.0
    var xAxisValues = [Date]()
    var yAxisValues = [Double]()
    
    var coinName: String {
        return coin.name
    }
    
    var chartLineColor: Color {
        let priceChange = (coin.sparklineIn7D?.price.last ?? 0) - (coin.sparklineIn7D?.price.first ?? 0)
        return priceChange > 0 ? .green : .red
    }
    
    var overviewSectionModel: CoinDetailsSectionModel {
        // price stats
        let price = coin.currentPrice.toCurrency()
        let percentChange = coin.priceChangePercentage24H
        let priceStats = StatisticModel(title: "Current Price", value: price, percentageChange: percentChange)
        
        // market cap stats
        let marketCap = coin.marketCap ?? 0
        let mcPercentChange = coin.marketCapChangePercentage24H
        let mcStats = StatisticModel(title: "Market Capitalization",
                                     value: marketCap.formattedWithAbbreviations(),
                                     percentageChange: mcPercentChange)
        
        // rank stats
        let rank = coin.marketCapRank
        let rankStats = StatisticModel(title: "Rank", value: "\(rank)", percentageChange: nil)
        
        // volume stats
        let volume = coin.totalVolume ?? 0
        let volumeStats = StatisticModel(title: "Volume", value: volume.formattedWithAbbreviations(), percentageChange: nil)
        
        return CoinDetailsSectionModel(title: "Overview", stats: [priceStats, mcStats, rankStats, volumeStats])
    }
    
    var additionalDetailsSectionModel: CoinDetailsSectionModel {
        // 24H High
        let high = coin.high24H?.toCurrency() ?? "N/A"
        let highStats = StatisticModel(title: "24H High", value: high, percentageChange: nil)
        
        // 24H Low
        let low = coin.low24H?.toCurrency() ?? "N/A"
        let lowStats = StatisticModel(title: "24H Low", value: low, percentageChange: nil)
        
        // 24H Price Change
        let priceChange24H = coin.priceChange24H.toCurrency()
        let percentChange24H = coin.priceChangePercentage24H
        let priceChangeStats = StatisticModel(title: "24H Price Change", value: priceChange24H, percentageChange: percentChange24H)
        
        // 24H Marketcap Change
        let marketCapChange = coin.marketCapChange24H ?? 0
        let marketCapChangePercentage = coin.marketCapChangePercentage24H
        let marketStats = StatisticModel(title: "24H Market Cap Change", value: "$\(marketCapChange.formattedWithAbbreviations())", percentageChange: marketCapChangePercentage)
        
        return CoinDetailsSectionModel(title: "Additional Details", stats: [highStats,
                                                                            lowStats,
                                                                            priceChangeStats,
                                                                            marketStats])
    }
    
    init(coin: Coins) {
        self.coin = coin
        configureChartData()
    }
    
    func configureChartData() {
        guard let priceData = coin.sparklineIn7D?.price else { return }
        var index = 0
        self.minPrice = priceData.min()!
        self.maxPrice = priceData.max()!
        self.endDate = Date(coinGeckoString: coin.lastUpdated ?? "")
        self.startDate = endDate.addingTimeInterval(-7 * 60 * 60 * 24)
        self.yAxisValues = [minPrice, (maxPrice + minPrice) / 2 ,maxPrice]
        self.xAxisValues = [startDate, endDate]
        
        for price in priceData.reversed() {
            let date = endDate.addingTimeInterval(-1 * 60 * 60 * Double(index))
            let chartDataItem = ChartData(date: date, value: price)
            self.chartData.append(chartDataItem)
            index += 1
        }
    }
}
