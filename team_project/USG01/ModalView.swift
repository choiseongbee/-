//
//  ModalView.swift
//  USG01
//
//  Created by 최성빈 on 2023/01/19.
//

import SwiftUI

struct ModalView: View {
    @Binding var Modal: Bool
    var body: some View {
        Button {
            Modal = false
        } label: {
            Text("닫기")
        }

    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView(Modal: .constant(false))
    }
}
