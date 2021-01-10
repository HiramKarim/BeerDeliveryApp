//
//  DetailRow.swift
//  BeerDelivery
//
//  Created by Hiram Castro on 1/5/21.
//

import SwiftUI

struct DetailRow: View {
    
    let food: FoodModel
    
    @Binding var showOrderSheet:Bool
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(food.title ?? "")
                    .font(.headline)
                    .padding(.top, 10)
                Text("$ \(food.price ?? 0.0, specifier: "%2.2f")")
                    .font(.caption)
            }
            Spacer()
            Button(action: {
                showOrderSheet = true
            }, label: {
                Text("ORDER")
            })
            .frame(width: 80, height: 50)
            .background(Color.orange)
            .cornerRadius(10)
            .foregroundColor(.white)
            .buttonStyle(BorderlessButtonStyle())
        }
        .padding(20)
    }
}

struct DetailRow_Previews: PreviewProvider {
    static var previews: some View {
        
        let helper = Helper()
        
        DetailRow(food: helper.foodData[0], showOrderSheet: .constant(false))
            .previewLayout(.sizeThatFits)
    }
}
