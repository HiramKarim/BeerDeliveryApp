//
//  FoodModel.swift
//  BeerDelivery
//
//  Created by Hiram Castro on 1/5/21.
//

import UIKit

struct FoodModel: Identifiable {
    let title:String?
    let price:Double?
    let category:Categories?
    let id = UUID()
}

enum Categories {
    case burger
    case pasta
    case pizza
    case desserts
}
