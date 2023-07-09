//
//  CompleteSignupView.swift
//  Project
//
//  Created by PeterPark on 2023/07/03.
//

import SwiftUI

struct CompleteSignupView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationView {
            
            VStack(spacing: 20) {
                Spacer()
                
                Text("Congratulation!")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("seablue"))
                
                Text("Click below to complete registration and start Using ")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
                
                
                Button(action: {
                    //
                }, label: {
                    Text("Go back and Log in !")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 360, height: 44)
                        .cornerRadius(10)
                    
                    
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .background(Color("seablue"))
                        .cornerRadius(12)
                })
                .padding(.bottom, 300)
                
                Spacer()
            }
            
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        //
                    }, label: {
                        Image(systemName: "chevron.left")
                            .resizable()
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

struct CompleteSignupView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteSignupView()
    }
}
