//
//  TrashSurveyResultView.swift
//  USG01
//
//  Created by kimjiyeon on 2023/03/10.
//

import SwiftUI

struct TrashSurveyResultView: View{
    
    @Binding var isclosed:Bool
    
    @State private var resultButton = false
    
    var body: some View{
        
        NavigationStack{
            
            if !resultButton{
                TrashSurveyResult(showResultView: $resultButton)
            } else {
                TrashResultView(isclose: $isclosed)
            }
            
        }
        
        
    }
    
}

struct TrashSurveyResult: View {
    
    @Binding var showResultView: Bool
    @State private var isEntered = false
    
    
    var body: some View {
            ZStack{
                
                
                Rectangle()
                    .fill(Color(red: 253/255, green: 237/255, blue: 196/255))
                    .frame(maxWidth: .infinity,
                           maxHeight: .infinity).ignoresSafeArea()
                
                VStack{
                    Text("choi님의").bold().font(.custom("BMJUAOTF", size: 30))
                    
                
                    Button {
                        showResultView.toggle()
                    } label: {
                        Text("결과 확인")
                    }.padding().bold().font(.custom("BMJUAOTF", size: 20)).foregroundColor(.white).background(Color(red: 226/255, green: 196/255, blue: 141/255)).cornerRadius(30).padding()
                }
                }
        }
        
        
    }


struct TrashResultView:View{
    
    @Binding var isclose: Bool
    
    var body: some View{
        NavigationView {
            ZStack{
                
                VStack{
                    
                    ZStack{
                        Rectangle().fill(Color.white)
                        
                        VStack{
                            Spacer()
                            
                            Text("choi님은").bold().font(.custom("BMJUAOTF", size: 30)).padding()
                            
                            Spacer()
                            
                            ZStack{
                                Rectangle().foregroundColor(Color(red: 241/255, green: 159/255, blue: 100/255)).cornerRadius(80).padding()
                                
                                Spacer()
                                
                                VStack{
                                    Text("하루 평균 441.24g").foregroundColor(Color.white).bold().font(.custom("BMJUAOTF", size: 35)).padding()
                                    Text("연 평균 161.05g").foregroundColor(Color.white).bold().font(.custom("BMJUAOTF", size: 35)).padding()
                                }
                                
                            }
                            
                            Spacer()
                            
                            Text("일반 쓰레기를 배출하고 있어요").bold().font(.custom("BMJUAOTF", size: 30)).padding()
                            
                            Spacer()
                        }
                        
                    }
                    
                    ZStack{
                        Rectangle()
                            .fill(Color(red: 253/255, green: 237/255, blue: 196/255))
                            .frame(maxWidth: .infinity,
                                   maxHeight: .infinity).ignoresSafeArea()
                        VStack{
                            
                            
                            Text("우리나라 연 평균 181.12kg보다 적게 사용하고 계시네요!").bold().font(.custom("BMJUAOTF", size: 30)).padding()
                            NavigationLink(destination: ContentView().navigationBarHidden(true)) {
                                Text("확인")
                                    .padding().bold().font(.custom("BMJUAOTF", size: 40)).foregroundColor(.white).background(Color(red: 226/255, green: 196/255, blue: 141/255)).cornerRadius(30).padding()
                            }
                           

                        }
                    }
                }
                
                
            }
        }
        
    }
}

struct TrashSurveyResultView_Previews: PreviewProvider {
    static var previews: some View {
        TrashSurveyResultView(isclosed: .constant(true))
    }
}
