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
            DailyQuest()
                .tabItem {
                    Image(systemName: "checkmark")
                }

            
            StampView()
                .tabItem {
                    Image(systemName: "rectangle.on.rectangle")
                }
            settings()
                .tabItem {
                    Image(systemName: "gearshape")
                }
        }.onAppear{
            UITabBar.appearance().backgroundColor = .white
        }
        .accentColor(Color(red: 159/255, green: 200/255, blue: 142/255))
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

