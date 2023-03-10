//
//  settings.swift
//  USG01
//
//  Created by USG on 2023/03/11.
//

import SwiftUI

struct settings: View {
    @State private var status = true

    var body: some View {
        
        NavigationView {
            
            ZStack{
                Rectangle()
                    .fill(Color(red: 195/255, green: 230/255, blue: 193/255))
                    .frame(maxWidth: .infinity,
                           maxHeight: .infinity).ignoresSafeArea()
                
                
                VStack{
                   
                    
                    
                    Text("그린 다이어트")
                        .foregroundColor(Color.white)
                        .font(.custom("BMJUAOTF",size:34))
                        .padding(.top, 50)
                    
                    Spacer()
                    
                    Image("Earth")
                        .padding(.top,-100)
                    List{
                        Text("이름 설정")           .font(.custom("BMJUAOTF",size:34))
                            .padding(.top,5)
                        
                        Toggle(isOn: $status, label: {
                            Text("알림 설정")
                            .font(.custom("BMJUAOTF",size:34))
                                })
                            .frame(width : 220)
                            .padding(.bottom,20)
                    
                    }
                    .scrollContentBackground(.hidden) // Xcode 14b4+
                    .background(Color(red: 195/255, green: 230/255, blue: 193/255))
                    .frame(width:285,height: 155)
                    
                    Spacer()

  
                    Spacer()
                    
                    }
                    
                }
                
                
            
                
                
            
            
        }
    }
}

struct settings_Previews: PreviewProvider {
    static var previews: some View {
        settings()
    }
}
