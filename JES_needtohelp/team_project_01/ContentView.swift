//
//  ContentView.swift
//  team_project_01
//
//  Created by USG on 2023/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    

      
        
//        Rectangle()
//            .fill(Color.red)
//            .frame(width: 100, height: 50)
//
//        Image("background")
//            .resizable(resizingMode: .stretch)
//            .aspectRatio(contentMode: .fill)
            
        VStack{
                NavigationView{
                    ZStack{
//                        Color(red: 210 / 255, green: 255 / 255,                         blue: 255 / 255).ignoresSafeArea()
//
                        NavigationLink(destination: next_page()) {
                            
                            Text("버튼입니다.")
                                .frame(width: 100, height: 100)
                        }
                    }
                    
                }
        
            
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
