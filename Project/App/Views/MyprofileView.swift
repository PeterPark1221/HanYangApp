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
                //image and names
                HStack(spacing: 10) {
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 56, height: 56)
                        .foregroundColor(Color("seablue"))
                    
                    Text("박호연1221")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("seablue"))
                    
                    Spacer()
                    
                    Circle()
                        .foregroundColor(Color("seablue"))
                        .frame(width: 34 ,height: 34)
                        .overlay {
                            Image(systemName: "pencil")
                                .foregroundColor(.white)
                        }
                }
                .padding(.horizontal, 16)
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width  - 40, height: 189)
                        .cornerRadius(12)
                        .shadow(color: Color.black, radius: 2.6)
                    
                    VStack {
                        HStack {
                            //image
                            Image("myimage")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 100)
                                .clipShape(Circle())
                                .padding(.trailing, 19)
                            
                            //info
                            VStack {
                                HStack(spacing: 2) {
                                    Text("박호연")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                    
                                    Text("(2024547545)")
                                        .font(.headline)
                                        
                                    
                                }
                                VStack(spacing: 8) {
                                    Text("컴퓨터소프트위어학부")
                                        .font(.footnote)
                                        .fontWeight(.semibold)
                                    .foregroundColor(.gray)
                                    
                                    HStack {
                                        Text("Grade: 2")
                                            .font(.footnote)
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color(.systemGray3))
                                        
                                        Text("Age: 24")
                                            .font(.footnote)
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color(.systemGray3))
                                    }
                                }.padding(.top, 15)
                            }
                        }
                    }
                }
                .padding()
                Divider()
                
                HStack {
                    Text("기능")
                        .font(.headline)
                    .fontWeight(.bold)
                    
                    Spacer()
                }
                .padding(.horizontal)
            }
            
            //add controll button
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        //
                    }, label: {
                        Image(systemName: "gearshape")
                            .foregroundColor(Color("seablue"))
                            
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
