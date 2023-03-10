//
//  DailyQuest.swift
//  USG01
//
//  Created by USG on 2023/03/11.
//

import SwiftUI

struct DailyQuest: View {
    @State var isfailclicked = false
    @State var issucessclicked = false
    
    var body: some View {
        
        
        
        
        NavigationView {
            
            ZStack{
                
                
                
                Rectangle()
                    .fill(Color(red: 195/255, green: 230/255, blue: 193/255))
                    .frame(maxWidth: .infinity,
                           maxHeight: .infinity).ignoresSafeArea()
                VStack{
                    
                    Spacer()
                    RoundedRectangle(cornerRadius: 40)
                        .fill(Color.white)
                        .frame(width : 357,height : 283)
                    Spacer()
                    
                }
                VStack{
                    
                    Spacer()
                    
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color(red: 254/255, green: 217/255, blue: 119/255))
                        .frame(width : 225,height : 65)
                        .padding()
                        .overlay(
                            Text("일일 퀘스트")
                                .font(.custom("BMJUAOTF",size:28))
                                .bold()
                                .foregroundColor(.black)
                        )
                    
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color(red: 255/255, green: 174/255, blue: 81/255))
                        .frame(width : 300,height : 76)
                        .overlay(
                            Text("음식을 남기지 않기")
                                .font(.custom("BMJUAOTF",size:28))
                                .bold()
                                .foregroundColor(.black)
                        )
                    
                    HStack{
                        
                        
                        
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color(red: 133/255, green: 133/255, blue: 133/255))
                            .frame(width : 136,height : 60)
                            .padding(10.0)
                            .overlay(
                                Text("실패")
                                    .font(.custom("BMJUAOTF",size:22))
                                    .bold()
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                            )
                            .onTapGesture {
                                isfailclicked = true
                                
                            }
                            .fullScreenCover(isPresented: $isfailclicked) {
                                answerView(isfailclicked: $isfailclicked,issucessclicked: $issucessclicked)
                            }
                        
                        
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color(red: 133/255, green: 133/255, blue: 133/255))
                            .frame(width : 136,height : 60)
                            .padding(10.0)
                            .overlay(
                                Text("성공")
                                    .font(.custom("BMJUAOTF",size:22))
                                    .bold()
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                            )
                            .onTapGesture {
                                issucessclicked = true
                                
                            }
                            .fullScreenCover(isPresented: $issucessclicked) {
                                answerView(isfailclicked: $isfailclicked,issucessclicked: $issucessclicked)
                            }
                        
                        
                        
                    }
                    .padding(.bottom, 100.0)
                    Spacer()
                    
                    
                    
                }
                
                
            }
            
        }
        
    }
}

struct DailyQuest_Previews: PreviewProvider {
    static var previews: some View {
        DailyQuest()
    }
}
