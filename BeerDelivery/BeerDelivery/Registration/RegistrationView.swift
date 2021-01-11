//
//  RegistrationView.swift
//  BeerDelivery
//
//  Created by Hiram Castro on 1/10/21.
//

import SwiftUI

struct RegistrationView: View {
    var body: some View {
        VStack {
            if UIScreen.main.bounds.height < 750 {
                ScrollView(.vertical, showsIndicators: false) {
                    Home()
                }
            } else {
                Home()
            }
        }
        .padding(.vertical)
    }
}

struct Home: View {
    
    @State var index = 0
    @Namespace var name
    
    var body: some View {
        
        VStack {
            
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
            
            HStack(spacing:0) {
                
                //MARK: - Login Button
                
                Button(action: {
                    withAnimation(.spring()) {
                        index = 0
                    }
                }) {
                    
                    VStack {
                        Text("Login")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(index == 0 ? .black : .gray)
                        
                        ZStack {
                            // slide animation
                            Capsule()
                                .fill(Color.black.opacity(0.04))
                                .frame(height: 4)
                            
                            if index == 0 {
                                Capsule()
                                    .fill(Color("Color"))
                                    .frame(height: 4)
                                    .matchedGeometryEffect(id: "Tab", in: name)
                            }
                        }
                    }
                    
                }
                
                //MARK: - Sign up button
                Button(action: {
                    withAnimation(.spring()) {
                        index = 1
                    }
                }) {
                    
                    VStack {
                        Text("Sign Up")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(index == 1 ? .black : .gray)
                        
                        ZStack {
                            // slide animation
                            Capsule()
                                .fill(Color.black.opacity(0.04))
                                .frame(height: 4)
                            
                            if index == 1 {
                                Capsule()
                                    .fill(Color("Color"))
                                    .frame(height: 4)
                                    .matchedGeometryEffect(id: "Tab", in: name)
                            }
                        }
                    }
                    
                }
                
            }
            .padding(.top, 30)
            
        }
        
    }
    
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
