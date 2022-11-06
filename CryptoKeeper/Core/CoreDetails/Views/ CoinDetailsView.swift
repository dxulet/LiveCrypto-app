//
//   CoinDetailsView.swift
//  CryptoKeeper
//
//  Created by Daulet Ashikbayev on 06.11.2022.
//

import SwiftUI

struct _CoinDetailsView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                // chart
                
                // overview
//                CoinDetailsSection()
//                    .padding(.vertical)
//
//                // additional details
//                CoinDetailsSection()
//                    .padding(.vertical)
            }
            .padding()
            .navigationTitle("Bitcoin")
        }
    }
}

struct _CoinDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        _CoinDetailsView()
    }
}
