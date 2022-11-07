//
//  LazyNavigationView.swift
//  CryptoKeeper
//
//  Created by Daulet Ashikbayev on 07.11.2022.
//

import Foundation
import SwiftUI

struct LazyNavigationView<Content: View> : View {
    let build: () -> Content
    
    init(_ build: @autoclosure @escaping() -> Content) {
        self.build = build
    }
    
    var body: Content {
        build()
    }
}
