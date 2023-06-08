//
//  CenterModifier.swift
//  Africa
//
//  Created by 신상용 on 2023/06/08.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
