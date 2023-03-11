//
//  answerView.swift
//  USG01
//
//  Created by USG on 2023/03/11.
//

import SwiftUI

struct answerView: View {
    @Binding var isfailclicked : Bool
    @Binding var issucessclicked : Bool
    
    var body: some View {
        
        
        NavigationView {
            if  issucessclicked == true{
                
                
                ZStack{
                    Rectangle()
                        .fill(Color(red: 195/255, green: 230/255, blue: 193/255))
                        .frame(maxWidth: .infinity,
                               maxHeight: .infinity).ignoresSafeArea()
                    VStack{
                        
                        Spacer()
                        RoundedRectangle(cornerRadius: 40)
                            .fill(Color.white)
                            .frame(width : 337,height : 240)
                        Spacer()
                        
                    }
                    VStack{
                        
                        Spacer()
                        
                        Image("mission_complete")
                        
                        
                        Text("대단해요!\n지구가\n기뻐하고 있어요!")
                            .font(.custom("BMJUAOTF",size:28))
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding(.top, 100.0)
                        
                        
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color(red: 133/255, green: 133/255, blue: 133/255))
                            .frame(width : 101,height : 43)
                            .padding()
                            .overlay(
                                NavigationLink(destination: ContentView()
                                    .navigationBarHidden(true), label: {
                                    Text("확인")
                                        .font(.custom("BMJUAOTF",size:22))
                                        .bold()
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                })
                                
                            )
                            .padding(.bottom, 200.0)
                        Spacer()
                        
                        
                        
                    }
                    
                    
                }
                
            }
            if  isfailclicked == true {
                
                ZStack{
                    Rectangle()
                        .fill(Color(red: 195/255, green: 230/255, blue: 193/255))
                        .frame(maxWidth: .infinity,
                               maxHeight: .infinity).ignoresSafeArea()
                    VStack{
                        
                        Spacer()
                        RoundedRectangle(cornerRadius: 40)
                            .fill(Color.white)
                            .frame(width : 337,height : 240)
                        Spacer()
                        
                    }
                    VStack{
                        
                        Spacer()
                        
                        Image("mission_failed")
                        
                        
                        Text("아쉽군요..\n지구가\n슬퍼하고 있어요..")
                            .font(.custom("BMJUAOTF",size:28))
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding(.top, 100.0)
                        
                        
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color(red: 133/255, green: 133/255, blue: 133/255))
                            .frame(width : 101,height : 43)
                            .padding()
                            .overlay(
                                NavigationLink(destination: ContentView()
                                    .navigationBarHidden(true), label: {
                                    Text("확인")
                                        .font(.custom("BMJUAOTF",size:22))
                                        .bold()
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                })
                            )
                            .padding(.bottom, 200.0)
                        Spacer()
                        
                    }
                    
                }
                
                
            }
        }
        
    }
    
}

struct answerView_Previews: PreviewProvider {
    static var previews: some View {
        answerView(isfailclicked: .constant(true),issucessclicked: .constant(true))
      
        
    }
}
