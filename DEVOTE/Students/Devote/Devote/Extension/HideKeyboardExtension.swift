//
//  HideKeyboardExtension.swift
//  Devote
//
//  Created by 신상용 on 2023/06/16.
//

import SwiftUI

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

#endif
