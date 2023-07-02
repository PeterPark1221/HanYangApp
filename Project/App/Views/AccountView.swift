//
//  AccountView.swift
//  Project
//
//  Created by PeterPark on 2023/07/02.
//

import SwiftUI

struct AccountView: View {
    @State private var ID = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationView {
            VStack (spacing: 20){
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
            }
            
            
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
