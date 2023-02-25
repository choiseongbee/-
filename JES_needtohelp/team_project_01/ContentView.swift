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
                        Color(red: 183 / 255, green: 226 / 255,                         blue: 166 / 255).ignoresSafeArea()

                        
                        NavigationLink(destination: next_page()) {
                            
                            ZStack{
                                Image("Rectangle 29")
                                HStack{
                                    Image("성공")
                                    Image("실패")
                                    
                                }
                               
                            
                            }
                            
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
