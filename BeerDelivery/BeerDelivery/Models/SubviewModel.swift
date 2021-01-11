//
//  SubviewModel.swift
//  BeerDelivery
//
//  Created by Hiram Castro on 1/9/21.
//

import Foundation

struct SubviewModel: Identifiable {
    let imageString: String
    let title: String
    let caption: String
    let tag: Tab
    let id = UUID()
}

enum Tab: Hashable {
    case meditating
    case running
    case walking
}
