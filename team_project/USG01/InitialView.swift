//
//  InitialView.swift
//  USG01
//
//  Created by 최성빈 on 2023/03/04.
//

import SwiftUI

struct InitialView: View {
    @State private var isEntered = false
    
    var body: some View {
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
                
      
                    Button(action: {
                        isEntered = true
                    }) {
                        Text("쓰레기배출량 측정하기")
                            .font(.custom("BMJUAOTF", size: 28))
                            .foregroundColor(.black)
                        Image(systemName: "control")
                            .foregroundColor(.black)
                            .rotationEffect(.degrees(90))
                    }
                    .padding()
                    .frame(width: 246.0, height: 102.0)
                    .background(Color.white)
                    .cornerRadius(20)
                    .padding()
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        InitialView()
    }
}
