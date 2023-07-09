//
//  ContentView.swift
//  Project
//
//  Created by PeterPark on 2023/06/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
                
            //익명 게시물뷰 (작성& 검색기능 추가)
            Text("Home")
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                        
                }
                
            // 동아리 홍보 스터디 뷰
            Text("Club")
                .tabItem{
                    Image(systemName: "trophy")
                    Text("Club")
                }
                
            // 한양대 꿀팁 정보 공유뷰
            Text("getTip")
                .tabItem{
                    Image(systemName: "plus.app")
                    Text("Tip")
                }
                
            // 개인정보수정& 피드백 기능
            Text("Myprofile")
                .tabItem{
                    Image(systemName: "person.circle")
                    Text("Info")
                }
            }
            .accentColor(Color("seablue")) //view 색
            .onAppear{ //tabview background색 변경
                UITabBar.appearance().backgroundColor = .white
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
