//
//  NotificationView.swift
//  USG01
//
//  Created by 최성빈 on 2023/01/16.
//

import SwiftUI

struct NotificationView: View {
    @State var isOnNewsHighlights = false
    @State var isOnFeaturedStories = false
    @State var isOnWWDC = false
    @State var isOnTechTalks = false
    
    
    var body: some View {
        List{
            Section {
                Toggle(isOn: $isOnNewsHighlights) {
                    Text("News Highlights")
                }
                Toggle(isOn: $isOnFeaturedStories) {
                    Text("Featured Storiess")
                }
                Toggle(isOn: $isOnWWDC) {
                    Text("WWDC")
                }
                Toggle(isOn: $isOnTechTalks) {
                    Text("Tech Talks")
                }
            } footer: {
                Text("Apple ID로 Apple Developer 앱에 로그인하고 알림을 활성화한 모든 기기로 알림이 전송됩니다.")
            }
        }

    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
