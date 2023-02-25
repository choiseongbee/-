//
//  ContentView.swift
//  team_project_01
//
//  Created by USG on 2023/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
    ZStack(alignment: .bottomLeading) {
        Color(red: 52 / 255, green: 152 / 255, blue: 219 / 255).ignoresSafeArea()
        
        Rectangle()
            .fill(Color.red)
            .frame(width: 100, height: 50)
        
        Image("background")
            .resizable(resizingMode: .stretch)
            .aspectRatio(contentMode: .fill)
            
        VStack{
                NavigationView{
                    
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
