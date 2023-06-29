//
//  LoginView.swift
//  Project
//
//  Created by PeterPark on 2023/06/29.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack {
            Color("seablue")
            
            Rectangle()
                .cornerRadius(14)
                .foregroundColor(.white)
                .frame(height: 400)
                .padding(.top, 150)
            
                        
        }
        .ignoresSafeArea(.all)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
