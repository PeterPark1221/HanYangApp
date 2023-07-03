//
//  MyprofileView.swift
//  Project
//
//  Created by PeterPark on 2023/06/29.
//

import SwiftUI

struct MyprofileView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                //profile image & login
                HStack {
                    Circle()
                        .foregroundColor(.white)
                        .frame(width: 80, height: 80)
                        .overlay {
                            Button(action: {
                                //
                            }, label: {
                                Image(systemName: "person.crop.circle")
                                    .resizable()
                                    .imageScale(.large)
                                    .foregroundColor(.black)
                                    .overlay {
                                        Image(systemName: "plus").padding(.top, 50)
                                            .padding(.leading, 80)
                                    }
                            })
                        }
                    
                    Rectangle()
                        .foregroundColor(.gray)
                        .frame(width: 120, height: 32)
                }
                
                
            }
            
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        //
                    }, label: {
                        Text("내 프로필")
                            .font(.system(size: 27))
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .padding(.top, 10)
                    })
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        //
                    }, label: {
                        Image(systemName: "gear")
                            .foregroundColor(.black)
                            .imageScale(.large)
                            .padding(.top, 10)
                    })
                }
            }
        }
    }
}

struct MyprofileView_Previews: PreviewProvider {
    static var previews: some View {
        MyprofileView()
    }
}
