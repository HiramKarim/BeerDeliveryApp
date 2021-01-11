//
//  Subview.swift
//  BeerDelivery
//
//  Created by Hiram Castro on 1/9/21.
//

import SwiftUI

struct Subview: View {
    
    let subviewModel: SubviewModel
    
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading) {
                
                Image(subviewModel.imageString)
                    .resizable()
                    .frame(height: geometry.size.height / 2)
                    .aspectRatio(contentMode: .fit)
                    .clipped()
                    .padding(.top, 70)
                    .padding()
                
                Text(subviewModel.title)
                    .font(.title)
                    .padding()
                
                Text(subviewModel.caption)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding()
                
                Spacer()
            }
            
        }
    }
}

struct Subview_Previews: PreviewProvider {
    static var previews: some View {
        let helper = Helper()
        Subview(subviewModel: helper.subviewData[0])
    }
}
