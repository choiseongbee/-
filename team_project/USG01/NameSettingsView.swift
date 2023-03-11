//
//  NameSettingsView.swift
//  USG01
//
//  Created by 최성빈 on 2023/03/04.
//

import SwiftUI

struct NameSettingsView: View {
    @State private var name = ""
    @State private var isNameEntered = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Rectangle()
                    .fill(Color(red: 196/255, green: 230/255, blue: 193/255))
                    .frame(maxWidth: .infinity,
                           maxHeight: .infinity).ignoresSafeArea()
                VStack {
                    Text("그린 다이어터")
                        .font(.custom("BMJUAOTF", size: 34))
                        .foregroundColor(.white)
                        .padding([.leading, .bottom, .trailing], 60)
                    
                    Image("Earth")
                        .padding(.bottom, 74.0)
                    
                    VStack {
                        Text("이름을 설정해주세요")
                            .font(.custom("BMJUAOTF", size: 28))
                            .padding()
                        
                        TextField("", text: $name)
                            .padding()
                            .background(Color(.systemGray5))
                            .cornerRadius(10)
                            .padding(.horizontal)
                        
                        NavigationLink(destination: InitialView()
                            .navigationBarHidden(true), isActive: $isNameEntered) {
                            EmptyView()
                        }
                        
                        Button(action: {
                            isNameEntered = true
                        }) {
                            Text("확인")
                                .font(.custom("BMJUAOTF", size: 18))
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 101, height: 43)
                                .background(Color(red: 133/255, green: 133/255, blue: 133/255))
                                .cornerRadius(30)
                        }
                        .padding()
                        
                    }
                    .background(Color.white)
                    .cornerRadius(20)
                    .padding()
                    .shadow(radius: 10)
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct NameSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        NameSettingsView()
    }
}




