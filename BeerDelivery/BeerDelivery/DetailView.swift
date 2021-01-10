//
//  DetailView.swift
//  BeerDelivery
//
//  Created by Hiram Castro on 1/5/21.
//

import SwiftUI

struct DetailView: View {
    
    let helper = Helper()
    let currentCategory: Categories
    
    @State var showOrderSheet = false
    
    var body: some View {
        List(helper.filterData(foodDataSet: helper.foodData, by: currentCategory)) { food in
            DetailRow(food: food, showOrderSheet: $showOrderSheet)
        }
        .navigationTitle(Text(helper.categoryString(for: currentCategory)))
        .listStyle(SidebarListStyle())
        .sheet(isPresented: $showOrderSheet, content: {
            OrderForm()
        })
        .listStyle(SidebarListStyle())
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(currentCategory: .desserts)
        }
    }
}
