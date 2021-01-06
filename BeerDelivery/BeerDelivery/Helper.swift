//
//  Helper.swift
//  BeerDelivery
//
//  Created by Hiram Castro on 1/5/21.
//

import Foundation

struct Helper {
    
    var foodData = [FoodModel(title: "Margherita", price: 5.99, category: .pizza),
                    FoodModel(title: "Prosciutto", price: 6.89, category: .pizza),
                    FoodModel(title: "Funghi", price: 6.99, category: .pizza),
                    FoodModel(title: "Calzone", price: 6.99, category: .pizza),
                    FoodModel(title: "BBQ Burger", price: 9.90, category: .burger),
                    FoodModel(title: "Cheeseburger", price: 7.90, category: .burger),
                    FoodModel(title: "Vegan Burger", price: 8.90, category: .burger),
                    FoodModel(title: "Pulled Pork Burger", price: 11.90, category: .burger),
                    FoodModel(title: "Spagetthi Bolognese", price: 8.90, category: .pasta),
                    FoodModel(title: "Penne all'arrabbiata", price: 7.90, category: .pasta),
                    FoodModel(title: "Aglio e olio", price: 7.90, category: .pasta),
                    FoodModel(title: "Cheesecake", price: 3.99, category: .desserts),
                    FoodModel(title: "Cupcake", price: 2.99, category: .desserts),
                    FoodModel(title: "Icecream", price: 2.99, category: .desserts)]
    
    func filterData(foodDataSet: [FoodModel], by category: Categories) -> [FoodModel] {
        return foodDataSet.filter { (food) -> Bool in
            food.category == category
        }
    }
    
    func categoryString (for category: Categories) -> String {
        switch category {
        case .pizza:
            return "Pizza"
        case .burger:
            return "Burger"
        case .pasta:
            return "Pasta"
        case .desserts:
            return "Desserts"
            
        }
    }
    
}
