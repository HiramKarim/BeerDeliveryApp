//
//  ContentView.swift
//  BeerDelivery
//
//  Created by Hiram Castro on 12/27/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            CategoryView(imageName: "burger", categoryName: "BURGER")
            CategoryView(imageName: "pizza", categoryName: "PIZZA")
            CategoryView(imageName: "pasta", categoryName: "PASTA")
            CategoryView(imageName: "desserts", categoryName: "DESSERTS")
        }
    }
}

struct CategoryView:View {
    
    let imageName: String
    let categoryName: String
    
    var body: some View {
        HStack {
            Spacer()
            ZStack {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 150)
                    .clipped()
                    .cornerRadius(20.0)
                Text(categoryName)
                    .font(.custom("HelveticaNeue-Medium", size: 20))
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black).opacity(0.8)
            }
            Spacer()
        }
        .padding(.top, 5)
        .padding(.bottom, 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
