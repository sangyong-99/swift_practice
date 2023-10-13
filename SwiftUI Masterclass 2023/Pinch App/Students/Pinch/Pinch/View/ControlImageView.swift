//
//  ControlImageView.swift
//  Pinch
//
//  Created by 신상용 on 2023/05/31.
//

import SwiftUI

struct ControlImageView: View {
    let icon:String
    
    var body: some View {
        Image(systemName: icon)
            .font(.system(size: 36))
    }
}

struct ControlImageView_Previews: PreviewProvider {
    static var previews: some View {
        ControlImageView(icon: "minus.magnifyingglass")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
