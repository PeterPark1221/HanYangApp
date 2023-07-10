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
            ScrollView {
                VStack {
                    //image and names
                    HStack(spacing: 10) {
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 76, height: 76)
                            .foregroundColor(Color("seablue"))
                            .overlay(pickImageButton.offset(x:8, y:0), alignment: .bottomTrailing)
                            
                        
                        Text("박호연1221")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("seablue"))
                            .padding(.leading, 7)
                        
                        Spacer()
                        
                        
                        Button(action: {
                            //
                        }, label: {
                            Text("Edit profile")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .frame(width: 100, height: 40)
                                .background(Color("seablue"))
                                .cornerRadius(9)
                        })
                    }
                    .padding(.horizontal, 16)
                    .padding(.bottom)
                    
                    //id card and backgroundColor
                    ZStack {
                            
                        ZStack {
                            VStack {
                                Rectangle()
                                    .foregroundColor(.white)
                                    .frame(width: UIScreen.main.bounds.width  - 40, height: 189)
                                    .cornerRadius(12)
                                .shadow(color: Color.black, radius: 4)
                            }
                            
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
                    }
                    
                    Divider()
                        .background(Color("seablue"))
                    
                    //커뮤니티 설정
                    VStack(alignment:.leading, spacing: 19) {
                        HStack {
                            Text("커뮤니티")
                                .font(.system(size: 23))
                                .fontWeight(.semibold)
                            
                            Spacer()
                        }
                        
                        HStack {
                            Image(systemName: "square.and.pencil")
                            Text("내가 쓴 글")
                        }
                        .padding(.horizontal,7)
                        
                        HStack {
                            Image(systemName: "heart.circle")
                            Text("좋아요")
                        }
                        .padding(.horizontal,7)
                        
                        HStack {
                            Image(systemName: "bookmark")
                            Text("저장함")
                        }
                        .padding(.horizontal,7)
                        
                        HStack {
                            Image(systemName: "hand.raised.circle")
                            Text("커뮤니티 이용규칙")
                        }
                        .padding(.horizontal,7)
                    }
                    .padding(.horizontal)
                    
                    Divider()
                        .background(Color("seablue"))
                    
                    //기타설정
                    VStack(alignment:.leading, spacing: 19) {
                        HStack {
                            Text("기타")
                                .font(.system(size: 23))
                                .fontWeight(.semibold)
                            
                            Spacer()
                        }
                        
                        HStack {
                            Image(systemName: "checkmark.seal.fill")
                            Text("정보 동의 설정")
                        }
                        .padding(.horizontal,7)
                        
                        HStack {
                            Image(systemName: "person.crop.circle.badge.minus")
                            Text("로그아웃")
                        }
                        .padding(.horizontal,7)
                        
                        HStack {
                            Image(systemName: "person.crop.circle.badge.xmark")
                            Text("계정탈퇴")
                        }
                        .padding(.horizontal,7)
                    }
                    .padding(.horizontal)
                }
                .padding(.horizontal)
                
                //setting button
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
                
                //feedback button
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            //
                        }, label: {
                            Image(systemName: "lightbulb.circle")
                                .foregroundColor(Color("seablue"))
                                
                        })
                    }
            }
            }
        }
    }
}

//이미지 사진 쳔집 버튼
var pickImageButton: some View {
    Button(action: {
        //
    }, label: {
        Circle()
            .fill(Color.white)
            .frame(width:32, height: 32)
            .shadow(color: .primary, radius: 2, x: 2, y: 2)
            .overlay {
                Image(systemName: "pencil")
                    .foregroundColor(.black)
            }
    })
}


struct MyprofileView_Previews: PreviewProvider {
    static var previews: some View {
        MyprofileView()
    }
}
