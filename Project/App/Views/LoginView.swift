//
//  LoginView.swift
//  Project
//
//  Created by PeterPark on 2023/06/29.
//

import SwiftUI

struct LoginView: View {
    @State private var ID = ""
    @State private var password = ""
    var body: some View {
        ZStack {
            Color("white")
            NavigationView {
                
                
                VStack {
                    Image("hanyanglogo")
                        .resizable()
                        .scaledToFill()
                        .frame(width:150, height: 150)
                        .padding(.bottom, 8)
                    
                    TextField("Enter your ID", text: $ID)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                        .autocapitalization(.none)
                    
                    SecureField("Enter your password", text: $password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                    
                    Button(action: {
                        //Text("find password")
                    }, label: {
                        Spacer()
                        Text("Forgot password?")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("seablue"))
                            .padding(.top)
                            .padding(.trailing, 28)
                    })
                    
                    Button(action: {
                                        //
                    }, label: {
                            Text("Login")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.white )
                            .frame(width: 360, height: 44)
                            .background(Color("seablue"))
                            .cornerRadius(10)
                    })
                    .padding(.vertical )
                    
                    HStack {
                        Rectangle()
                            .frame(width: (UIScreen.main.bounds.width/2) - 40, height: 0.5)
                        .foregroundColor(.gray)
                        
                        Text("OR")
                            .foregroundColor(.gray)
                            .font(.footnote)
                        
                        Rectangle()
                            .frame(width: (UIScreen.main.bounds.width/2) - 40, height: 0.5)
                            .foregroundColor(.gray)
                    }
                    
                    
                    //한양대 포털사이트 URL받아와서 로그인
                    
                    HStack {
                        Button(action: {
                            //Text("login with hanyang potal")
                        }, label: {
                            Image("hanyanglogo")
                                .resizable()
                                .imageScale(.small)
                                .scaledToFill()
                                .frame(width: 30, height: 30)
                            Text("Continue with Hanyang")
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .foregroundColor(Color("seablue"))
                                .foregroundColor(Color(.systemBlue))
                        })
                    }
                    .padding(.top, 8)
                    Spacer()
                    
                    
                    NavigationLink(destination: AccountView().navigationBarBackButtonHidden(), label: {
                        
                            Text("Don't have an account?")
                            Text("Sign up!")
                                .fontWeight(.semibold)
                    })
                    .foregroundColor(Color("seablue"))
                    }
                .padding(.top, 80)
            }
        }
        .ignoresSafeArea(.all)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
