//
//  next_page.swift
//  team_project_01
//
//  Created by USG on 2023/02/25.
//

import SwiftUI

struct next_page: View {
    var body: some View {
        
        ZStack(alignment: .bottomLeading) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 50)
                Rectangle()
                    .fill(Color.blue)
                    .frame(width:50, height: 100)
            }
            
    }
}

struct next_page_Previews: PreviewProvider {
    static var previews: some View {
        next_page()
    }
}
