//
//  account.swift
//  USG01
//
//  Created by 최성빈 on 2023/01/16.
//

import SwiftUI

struct accountView: View {
    @State var isPresentatedDialog = false
    @State private var word: String = ""
    @State private var words: [String] = ["리이오", "링고", "영","테드"]
    @State var ModalBool = false


    
    var body: some View {
        NavigationStack{
            List {
                Section {
                    Button("로그인") {
                        isPresentatedDialog = true
                    }
                    .confirmationDialog("로그인", isPresented: $isPresentatedDialog) {
                        Button("Apple ID로 로그인"){}
                    } message: {
                        Text("기존 iCloud 계정을 사용하여 로그인하거나 다른 Apple ID를 사용하십시오.")
                    }
                } footer: {
                    Text("Apple Developer 계정 등을 관리하려면 Apple ID로 로그인 하십시오.")
                }
                Section {
                    NavigationLink{
                        NotificationView()
                            .navigationTitle("알림")
                            .navigationBarTitleDisplayMode(.inline)
                    } label: {
                        Text("알림")
                    }
                } footer: {
                    Text("계정, 공지, WWDC 등에 대한 업데이트 수신 방법을 사용자화하십시오.")
                }
                Section {
                    ForEach(words, id: \.self) { word in
                        NavigationLink(destination: Text(word)) {
                            Text(word)
                        }
                    }

                }
                Section {
                    Button {
                        ModalBool = true
                    } label: {
                        Text("Modal")
                    }
                    .sheet(isPresented: $ModalBool){
                        ModalView(Modal: $ModalBool)
                        
                    }

                }
                


                
                }
            TextField("", text: $word)
            Button("추가") {
                self.words.append(self.word)
            }
            .navigationTitle(Text("계정"))
        }
        
    }
}

struct accountView_Previews: PreviewProvider {
    static var previews: some View {
        accountView()
    }
}
