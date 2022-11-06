//
//  TopMoversView.swift
//  CryptoKeeper
//
//  Created by Daulet Ashikbayev on 06.11.2022.
//

import SwiftUI

struct TopMoversView: View {
    @StateObject var viewModel: HomeViewModel
    var body: some View {
        VStack(alignment: .leading) {
            Text("TopMovers")
                .font(.headline)
            
            ScrollView(.horizontal) {
                HStack(spacing: 16) {
                    ForEach(viewModel.topMovingCoins) { coin in
                        NavigationLink {
                            _CoinDetailsView()
                        } label: {
                            TopMoversItemView(coin: coin)
                        }

                    }
                }
            }
        }
        .padding()
    }
}

struct TopMoversView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversView(viewModel: HomeViewModel())
    }
}
