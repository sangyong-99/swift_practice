//
//  View1.swift
//  main
//
//  Created by 신상용 on 2023/04/28.
//

import SwiftUI

struct TopView: View {
    var body: some View {
        
        ZStack {
            ZStack {
                Image("familyImage")
                    .resizable()
                .frame(width: 390, height: 175.45)
                .overlay(
                    Rectangle()
                        .frame(width: 362, height: 75)
                        .opacity(0.4)
                        .cornerRadius(/*@START_MENU_TOKEN@*/12.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .shadow(color: Color(UIColor.systemGray2), radius: 24, x: 0, y: 6)
                        .overlay(
                            
                            VStack {
                                HStack {
                                    Text("6공주네 다이어리")
                                        .bold()
                                    Circle()
                                        .frame(width: 18, height: 18)
                                        .foregroundColor(Color(uiColor: UIColor.systemGray))
                                }
                                Text("4명 참여중")
                                    .font(.subheadline)
                                    .foregroundColor(Color(red: 0.498, green: 0.498, blue: 0.498))
                            }
                        )
                    ,alignment: .bottom)
                
                
            }
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
