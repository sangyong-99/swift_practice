//
//  Two_Button.swift
//  main
//
//  Created by 신상용 on 2023/04/28.
//

import SwiftUI

struct Two_Button: View {
    @StateObject var VSClass: ViewSelection
    
    var body: some View {
        
        ZStack {
            HStack{
                
                VStack {
                    Button(action: {
                        VSClass.viewSelection = true
                    }) {
                        Text("오늘의 다꾸")
                            .bold()
                            .foregroundColor(VSClass.viewSelection ? Color.black : Color.gray)
                    }
                    Divider()
                        .frame(minHeight: 3)
                        .overlay(VSClass.viewSelection ? Color.black : Color.gray)
                }
                
//                Spacer()
                
                VStack {
                    Button(action: {
                        VSClass.viewSelection = false
                    }) {
                        Text("우리가족 다이어리")
                            .bold()
                            .foregroundColor(VSClass.viewSelection ? Color.gray : Color.black)
                }
                    Divider()
                        .frame(minHeight: 3)
                        .overlay(VSClass.viewSelection ? Color.gray : Color.black)
                }
            }
            .padding(.leading, 20)
            .padding(.trailing, 20)
            
            .border(Color.black, width: 0)
            
            
        }
        
        
    }
}

struct Two_Button_Previews: PreviewProvider {
    static var previews: some View {
        Two_Button(VSClass: ViewSelection())
    }
}
