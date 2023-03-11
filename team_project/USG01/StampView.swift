//
//  StampView.swift
//  USG01
//
//  Created by kimjiyeon on 2023/02/23.
//

import SwiftUI

struct StampView: View {
    
    @State private var selection = 0
    
    @State var btnToggle = false
    
    @State var stampPage = 0
    
    @State var tipStampNum = Array(repeating: 0, count: 9)
    
    let circleItems = Array(1...9).map({ "Element \($0)" })

    
    let tipStamp = Array(0...1).map({ "tip\($0)" })
    
    let missionStamp = Array(0...7).map({ "mission\($0)" })
    
    let layout = [
        GridItem(.flexible(minimum: 100), spacing: 37),
        GridItem(.flexible(minimum: 100),spacing: 37),
        GridItem(.flexible(minimum: 100)
                ,spacing: 37)
    ]

    
    
    var body: some View {
        NavigationStack{
            ZStack{
                Rectangle()
                    .fill(Color(red: 217/255, green: 239/255, blue: 203/255))
                    .frame(maxWidth: .infinity,
                           maxHeight: .infinity).ignoresSafeArea()
                
                VStack {
                    
                    Spacer()
                    

                        HStack(spacing: 0){
                            Button {
                                btnToggle = false
                                stampPage = 0
                            } label: {
                                Text("팁").font(.custom("BMJUAOTF", size: 22)
                                    .bold()).foregroundColor(btnToggle ? .white : .black)
                            }.padding(EdgeInsets(top:7, leading: 55.5, bottom: 7, trailing: 55.5)).background(btnToggle ? .gray : .white)
                            
                            Button {
                                btnToggle = true
                                stampPage = 0
                            } label: {
                                Text("미션").font(.custom("BMJUAOTF", size: 22)
                                    .bold()).foregroundColor(btnToggle ? .black : .white)
                            }.padding(EdgeInsets(top:7, leading: 55.5, bottom: 7, trailing: 55.5))
                                .background(btnToggle ? .white : .gray)
                        }
                    
                    Spacer()
                    
                    ZStack{
                        
                        LazyHGrid(rows: layout, spacing:  15) {
                            ForEach(circleItems, id: \.self) {
                                item in
                                VStack{
                                    Circle().fill(Color.white)
                                        .frame(height: 111)
                                }
                            }
                        }
                        
                        //팁&미션
                        btnToggle ?
                        LazyHGrid(rows: layout, spacing:  24) {
                            ForEach(missionStamp, id: \.self) {
                                item in
                                VStack{
                                    Image(item).resizable().aspectRatio( contentMode: .fit)
                                }
                            }
                        }
                        
                        :
                        
                        LazyHGrid(rows: layout) {
                            ForEach(tipStamp, id: \.self) {
                                item in
                                VStack{
                                    Image(item).resizable().aspectRatio( contentMode: .fit)
                                }
                            }
                        }
                        
                        
                        
                    }
                    
                    HStack{
                        
                        Spacer()
                        
                        Button {
                            print("ㅗ")
                        } label: {
                            Image(systemName: "arrow.right")
                        }.padding()
                    }.padding()
                    
                    Spacer().frame(maxHeight: 30)
                    
                }.navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            Text("나의 스탬프").font(.custom("BMJUAOTF", size: 28)
                                .bold()).accessibilityAddTraits(.isHeader)
                                .foregroundColor(Color(red: 63/255, green: 59/255, blue: 58/255))
                        }
                    }
            }
            
        }
    }
}

struct StampView_Previews: PreviewProvider {
    static var previews: some View {
        StampView()
    }
}
