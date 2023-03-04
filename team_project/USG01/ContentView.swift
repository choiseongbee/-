//
//  ContentView.swift
//  USG01
//
//  Created by 최성빈 on 2023/01/12.
//

import SwiftUI



struct ContentView: View {
    
    var body: some View {
        TabView {
            WasteChartView()
                .tabItem {
                    Image(systemName: "list.bullet")
                }

            
            StampView()
                .tabItem {
                    Image(systemName: "rectangle.on.rectangle")
                }
        }.onAppear{
            UITabBar.appearance().backgroundColor = .white
        }
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

