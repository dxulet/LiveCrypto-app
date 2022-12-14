//
//  PreviewProvider.swift
//  CryptoKeeper
//
//  Created by Daulet Ashikbayev on 07.11.2022.
//

import Foundation
import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
}

class DeveloperPreview {
    static let instance = DeveloperPreview()
    
    let stat1 = StatisticModel(title: "Current Price", value: "$20,543.00", percentageChange: 1.23)
    let stat2 = StatisticModel(title: "Market Capitalization", value: "$413.15Bn", percentageChange: 1.67)
    let stat3 = StatisticModel(title: "Rank", value: "1", percentageChange: nil)
    let stat4 = StatisticModel(title: "Volume", value: "35.99Bn", percentageChange: nil)
    let sectionModel = CoinDetailsSectionModel(title: "Overview", stats: [StatisticModel(title: "Current Price",
                                                                                         value: "$20,543.00",
                                                                                         percentageChange: 1.23),
                                                                          StatisticModel(title: "Market Capitalization",
                                                                                         value: "$413.15Bn",
                                                                                         percentageChange: 1.67),
                                                                          StatisticModel(title: "Rank",
                                                                                         value: "1",
                                                                                         percentageChange: nil),
                                                                          StatisticModel(title: "Volume",
                                                                                         value: "35.99Bn",
                                                                                         percentageChange: nil)])
    
    let coin = Coins(id: "bitcoin", symbol: "btc", name: "Bitcoin", image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579", currentPrice: 20710, marketCapRank: 397531964482, marketCap: 1, fullyDilutedValuation: 434785300732, totalVolume: 363327446921, high24H: 21301, low24H: 20576, priceChange24H: -515.884821368938, priceChangePercentage24H: -2.43046, marketCapChange24H: -10707910844.993835, marketCapChangePercentage24H: -2.62295, circulatingSupply: 19200675, totalSupply: 21000000, maxSupply: 21000000, ath: 69045, athChangePercentage: -70.01803, athDate: "2021-11-10T14:24:11.849Z", atl: 67.81, atlChangePercentage: 30428.36619, atlDate: "2013-07-06T00:00:00.000Z", lastUpdated: "2022-11-07T10:20:13.958Z", sparklineIn7D: SparklineIn7D(price: [
        20552.244023689098,
        20498.3504131385,
        20528.740502150093,
        20462.27940555481,
        20601.786781559098,
        20736.443729567003,
        20724.811159882338,
        20710.781663255613,
        20591.0353868866,
        20283.290452136498,
        20363.76911305374,
        20361.233125418945,
        20358.478741035924,
        20457.363220077204,
        20367.491056368646,
        20422.20095110334,
        20404.02947536585,
        20478.088541185574,
        20494.60120983709,
        20460.681379378133,
        20519.73227933234,
        20578.118116311925,
        20483.540478987252,
        20490.822822411643,
        20525.21893677781,
        20628.697291065695,
        20580.363934091754,
        20567.596761570116,
        20601.19892323523,
        20633.422035907417,
        20542.12831783979,
        20548.295047447307,
        20364.853765535223,
        20446.75834018051,
        20418.178600374205,
        20432.258989625938,
        20429.964797633787,
        20434.343616391172,
        20445.092911382628,
        20468.78681771494,
        20484.872501888058,
        20455.575268730554,
        20489.646203160763,
        20495.31458222404,
        20506.06731356347,
        20515.30663320757,
        20525.482340123886,
        20521.900464975184,
        20489.412764297453,
        20476.442171633098,
        20432.484088299174,
        20458.290248635058,
        20473.96598969314,
        20412.685711808317,
        20447.577703478113,
        20407.922200669807,
        20412.530573008095,
        20426.7659320005,
        20429.58798095012,
        20451.91823520295,
        20460.84832490166,
        20592.47780777743,
        20282.761644334227,
        20190.76906774255,
        20134.419445350864,
        20064.629454699338,
        20162.980904822525,
        20179.584018418,
        20307.501850332606,
        20312.1600642626,
        20318.321247361713,
        20368.683662258176,
        20367.875568687952,
        20327.84338634204,
        20286.491991436895,
        20289.42925637583,
        20309.098548181188,
        20251.3892918984,
        20121.17137787988,
        20090.561006693835,
        20162.474052743997,
        20311.72814631126,
        20247.854984974514,
        20266.596995193562,
        20250.04378170912,
        20245.692662019745,
        20236.807451368666,
        20243.12115883309,
        20254.798403369765,
        20189.266737292175,
        20210.912417111318,
        20273.557507271104,
        20269.922185433366,
        20308.734194472534,
        20323.538194237874,
        20317.852205987005,
        20478.531759691436,
        20605.25986313551,
        20595.763937506443,
        20612.510886676344,
        20603.637372510006,
        20626.076197845246,
        20563.296484582854,
        20676.63311242384,
        20701.52878848929,
        21234.3186113337,
        20884.18213078864,
        20840.449028943098,
        20809.45678885675,
        21015.317773498842,
        21066.236400538623,
        21066.595068938845,
        21116.370606520737,
        21170.67856684137,
        21150.315583912397,
        21171.231212450428,
        21350.719393946758,
        21368.69991283399,
        21414.50178624252,
        21417.69311311931,
        21401.2378230403,
        21398.227445976274,
        21385.960992410855,
        21289.686523121716,
        21288.48367501272,
        21286.097262673986,
        21384.566695450398,
        21299.174594237647,
        21265.33437563626,
        21276.557001857764,
        21303.287841466816,
        21307.87269975239,
        21330.876648332818,
        21285.861708635573,
        21336.805327883427,
        21343.188516229056,
        21322.019199689206,
        21336.302553557143,
        21282.985109422694,
        21311.192355995347,
        21227.99372803469,
        21245.716695868417,
        21228.6937033335,
        21242.89938353893,
        21156.724612303253,
        21169.171773149723,
        21202.411133086443,
        21228.884518214116,
        21264.394646785775,
        21268.44159287139,
        21206.104467409037,
        21232.73291094283,
        21214.14310743273,
        21212.51376358455,
        21271.345820162667,
        21262.282070229783,
        21229.49471997809,
        21222.33738971942,
        21197.586699758904,
        21201.395531268296,
        21152.039800258328,
        21146.593086888934,
        20921.822265010724,
        20883.301225933003,
        20959.779819372117,
        21011.162050344992,
        20927.639934520772,
        20887.68328944669
      ]), priceChangePercentage24HInCurrency: -2.4304636087011984)
}

