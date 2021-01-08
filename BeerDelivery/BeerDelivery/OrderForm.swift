//
//  OrderForm.swift
//  BeerDelivery
//
//  Created by Hiram Castro on 1/7/21.
//

import SwiftUI

struct OrderForm: View {
    
    @State var specialRequest = false
    @State var specialRequestInput = ""
    @State var orderAmount = 1
    
    var body: some View {
        Form {
            Toggle(isOn: $specialRequest) {
                Text("Any special requests?")
            }
            .toggleStyle(SwitchToggleStyle(tint: .orange))
            
            if specialRequest {
                TextField("Enter your request", text: $specialRequestInput)
            }
            
            Stepper(value: $orderAmount, in: 1...10) {
                Text("Quantity: \(orderAmount)")
            }
        }
    }
}

struct OrderForm_Previews: PreviewProvider {
    static var previews: some View {
        OrderForm()
    }
}
