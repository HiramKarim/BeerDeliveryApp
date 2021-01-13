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
            
            if index == 0 {
                Login()
            } else {
                SignUp()
            }
            
        }
        
    }
    
}

var social = ["twitter","fb","google"]

struct Login: View {
    
    @State var password = ""
    
    var body: some View {
        VStack {
            
            //MARK: - PHOTO AND TEXT
            HStack {
                VStack(alignment: .leading, spacing: 12) {
                    Text("Hello Again,")
                        .fontWeight(.bold)
                    Text("Justine")
                        .font(.title)
                        .fontWeight(.bold)
                    Button(action: {
                        
                    }) {
                        Text("This isn't me")
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                            .foregroundColor(Color("Color"))
                    }
                }
                Spacer(minLength: 0)
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 85, height: 85)
                    .clipShape(Circle())
            }
            .padding(.horizontal, 25)
            .padding(.top, 30)
            
            //MARK: - PASSWORD TEXTFIELD AND LABELS
            VStack(alignment: .leading, spacing: 15) {
                Text("Password")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                TextField("Password", text: $password)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: -5)
                Button(action: {
                    
                }) {
                    Text("Forgot Password")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                        .foregroundColor(Color("Color"))
                }
                .padding(.top, 10)
            }
            .padding(.horizontal, 25)
            .padding(.top, 25)
            
            //MARK: - LOGIN BUTTON
            Button(action: {
                
            }) {
                Text("Login")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 50)
                    .background(
                        LinearGradient(gradient: .init(colors: [Color("Color"), Color("Color1")]),                startPoint: .topLeading,
                                       endPoint: .bottomTrailing)
                    )
                    .cornerRadius(10)
            }
            .padding(.horizontal, 25)
            .padding(.top, 25)
            
            //MARK: - FACE ID BUTTON
            Button(action: {
                
            }) {
                HStack(spacing: 35) {
                    Image(systemName: "faceid")
                        .font(.system(size: 26))
                        .foregroundColor(Color("Color"))
                    Text("Login With Face ID")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(Color("Color"))
                    Spacer(minLength: 0)
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 8).stroke(Color("Color"), lineWidth: 1))
            }
            .padding(.top, 20)
            .padding(.horizontal, 25)
            
            //MARK: - ADDITIONAL SOCIAL NETWORK TO CONNECT
            HStack(spacing: 30) {
                ForEach(social, id: \.self) {
                    name in
                    Button(action: {
                        
                    }) {
                        Image(name)
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(Color(name == "google" ? "Color1" : "Color"))
                    }
                }
            }
            .padding(.top, 25)
            
        }
    }
}

struct SignUp: View {
    
    @State var user = ""
    @State var password = ""
    
    var body: some View {
        
        VStack {
            
            // MARK: CREATE ACCOUNT LABEL
            HStack {
                VStack(alignment: .leading, spacing: 12) {
                    Text("Create Account")
                        .font(.title)
                        .fontWeight(.bold)
                }
                Spacer(minLength: 0)
            }
            .padding(.horizontal, 25)
            .padding(.top, 30)
            
            //MARK: - FORM TEXTFIELDS
            VStack(alignment: .leading, spacing: 15) {
                Text("Username")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                TextField("email", text: $user)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: -5)
                Text("Password")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                TextField("password", text: $password)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: -5)
            }
            .padding(.horizontal, 25)
            .padding(.top, 25)
            
            //MARK: - SIGNUP BUTTON
            Button(action: {
                
            }) {
                Text("Sign up")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 50)
                    .background(
                        LinearGradient(gradient: .init(colors: [Color("Color"),Color("Color1")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .cornerRadius(8)
                
            }
            .padding(.horizontal, 25)
            .padding(.top, 25)
            
            //MARK: - ADDITIONAL BUTTONS
            Button(action: {
                
            }) {
                HStack(spacing: 35) {
                    Image(systemName: "faceid")
                        .font(.system(size: 26))
                        .foregroundColor(Color("Color"))
                    Text("Sign Up With Face ID")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(Color("Color"))
                    Spacer(minLength: 0)
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 8).stroke(Color("Color"), lineWidth: 1))
            }
            .padding(.top, 35)
            .padding(. horizontal, 25)
            
            HStack(spacing: 30) {
                
                ForEach(social,id: \.self) { name in
                    Button(action: {
                        
                    }) {
                        Image(name)
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(Color(name == "google" ? "Color1" : "Color"))
                    }
                }
                
            }
            .padding(.top, 25)
            
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
