//
//  CoinDetailsView.swift
//  CryptoKeeper
//
//  Created by Daulet Ashikbayev on 06.11.2022.
//

import SwiftUI

struct CoinDetailsView: View {
    let viewModel: CoinDetailsViewModel
    
    init(coin: Coins) {
        self.viewModel = CoinDetailsViewModel(coin: coin)
    }
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            // chart
            ChartView(viewModel: viewModel)
                .frame(height: 250)
                .padding(.vertical)
                .shadow(color: viewModel.chartLineColor, radius: 10)
                .shadow(color: viewModel.chartLineColor.opacity(0.4), radius: 10)
            
            // overview
            CoinDetailsSection(model: viewModel.overviewSectionModel)
                .padding(.vertical)
//
//                // additional details
            CoinDetailsSection(model: viewModel.additionalDetailsSectionModel)
                .padding(.vertical)
        }
            .padding()
            .navigationTitle(viewModel.coinName)
    }
}

struct _CoinDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CoinDetailsView(coin: dev.coin)
    }
}
