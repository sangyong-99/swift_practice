//
//  ContentView.swift
//  swift_practice
//
//  Created by 신상용 on 2023/05/26.
//

import SwiftUI

struct ContentView: View {
    @State private var isVStackHidden: Bool = false
    
    var body: some View {
        TestVStack(isHidden: $isVStackHidden).transition(.scale)
        Button("변경") {
            withAnimation {
                isVStackHidden.toggle()
            }
        }
    }
}

// Group
struct TestVStack: View {
    @Binding var isHidden: Bool
    
    var body: some View {
        Group {
            Color.red
            if isHidden {
            Text("Group입니다")
            }
        }
        .frame(width: 200, height: 200)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
