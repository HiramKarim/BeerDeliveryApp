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
    
    @State var firstName = ""
    @State var lastName = ""
    @State var street = ""
    @State var city = ""
    @State var zip = ""
    
    @State var userFeedback = 0.0
    
    var body: some View {
        Form {
            
            Section {
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
            
            Section {
                TextField("First name", text: $firstName)
                TextField("Last name", text: $lastName)
                TextField("Street", text: $street)
                TextField("City", text: $city)
                TextField("Zip", text: $zip)
            }
            
            Section {
                VStack {
                    Text("How do you like our Food Delivery App?")
                        .padding(.top, 10)
                    HStack {
                        Image(systemName: "hand.thumbsdown")
                        Slider(value: $userFeedback, in: 0.0...10.0)
                        Image(systemName: "hand.thumbsup")
                    }
                }
            }
            
            Section {
                Button(action: {
                    print("Order placed.")
                }) {
                    Text("Place order")
                }
            }
            
            
        }
    }
}

struct OrderForm_Previews: PreviewProvider {
    static var previews: some View {
        OrderForm()
    }
}
