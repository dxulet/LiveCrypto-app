//
//  StatisticView.swift
//  CryptoKeeper
//
//  Created by Daulet Ashikbayev on 07.11.2022.
//

import SwiftUI

struct StatisticView: View {
    let model: StatisticModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(model.title)
                .font(.caption)
            
            Text(model.value)
                .font(.headline)
            
            if let percentChange = model.percentageChange {
                HStack(spacing: 4) {
                    if percentChange > 0 {
                        Image(systemName: "arrowtriangle.up.fill")
                            .font(.caption)
                            .foregroundColor(.green)
                    } else {
                        Image(systemName: "arrowtriangle.down.fill")
                            .font(.caption)
                            .foregroundColor(.red)
                    }
                    
                        
                    Text(percentChange.toPercentString())
                        .font(.caption)
                        .bold()
                    
                    .foregroundColor(percentChange > 0 ? .green : .red)
                }
            }
        }
    }
}

struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticView(model: dev.stat1)
    }
}
