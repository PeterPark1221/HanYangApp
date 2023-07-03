//
//  AccountView.swift
//  Project
//
//  Created by PeterPark on 2023/07/02.
//

import SwiftUI

struct AccountView: View {
    @State private var ID = ""
    @State private var email = ""
    @State private var password = ""
    @State private var cpassword = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            
            //디자인 옵션1 전체 다 입력하는 것
            VStack(spacing: 12) {
                Text("Email")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("seablue"))
                    .frame(maxWidth: . infinity, alignment: .leading)
                    .padding(.leading)
                
                TextField("enter your  email", text: $email)
                    .font(.footnote)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .autocapitalization(.none)
                
                Text("ID")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("seablue"))
                    .frame(maxWidth: . infinity, alignment: .leading)
                    .padding(.leading)
                
                TextField("enter your  email", text: $ID)
                    .font(.footnote)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .autocapitalization(.none)
                
                
                HStack {
                    Text("Password")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("seablue"))
                        .frame(maxWidth: . infinity, alignment: .leading)
                    .padding(.leading)
                    
                    Text("*Your password must between 4 and 6 characters")
                        .font(.system(size: 10))
                        .foregroundColor(.gray)
                        .frame(width: 245)
                        .padding(.trailing)
                }
                
                SecureField("password", text: $password)
                    .font(.footnote)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .autocapitalization(.none)
                
                
                
                Text("Comfirm Password")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("seablue"))
                    .frame(maxWidth: . infinity, alignment: .leading)
                    .padding(.leading)
                
                SecureField("create your name", text: $cpassword)
                    .font(.footnote)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .autocapitalization(.none)
                
                
                NavigationLink(destination: CompleteSignupView().navigationBarBackButtonHidden(), label: {
                    Text("Next")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .background(Color("seablue"))
                        .cornerRadius(12)
                })
                /*Button(action: {
                    //
                }, label: {
                    Text("Next")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .background(Color("seablue"))
                        .cornerRadius(12)
                })
                .padding(.top, 32)*/
                
                 Spacer()
            }.padding(.top, 40)
            
            //디자인 옵션 2 하나씩 입력하는 것
            /*VStack (spacing: 20){
                Text("Create your ID")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.bottom, 10)
                
                Text("Pick a username for your account.\n You can always change it late!")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                
                TextField("ID", text: $ID)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .autocapitalization(.none)
                
             
                Button(action: {
                    //
                }, label: {
                    Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white )
                    .frame(width: 360, height: 44)
                    .background(Color("seablue"))
                    .cornerRadius(10)
                })
                
                Spacer()
            }*/
            
            .navigationTitle("Account")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        //
                    }, label: {
                        Image(systemName: "chevron.left")
                            .resizable()
                            .imageScale(.large)
                            .foregroundColor(Color("seablue"))
                            .onTapGesture {
                                dismiss()
                            }
                    })
                }
            }
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
