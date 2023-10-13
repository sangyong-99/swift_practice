//
//  SplashScreenView.swift
//  Launch_prac1
//
//  Created by 신상용 on 2023/04/27.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.7
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack{
                VStack{
                    Image(systemName: "hare.fill")
                        .font(.system(size: 80))
                        .foregroundColor(.red)
                    Text("Epic App 2")
                        .font(Font.custom("Baskerbille-Bold", size: 26))
                        .foregroundColor(.black.opacity(0.80))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)){
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
                    withAnimation {
                        self.isActive = true
                    }
                    
                }
            }
        }
    }
    
    
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
