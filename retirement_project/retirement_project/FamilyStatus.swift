//
//  FamilyStatus.swift
//  main
//
//  Created by 신상용 on 2023/04/29.
//

import SwiftUI

struct FamilyStatus: View {
    var body: some View {
        ZStack{
            Rectangle()
                .cornerRadius(8)
                .frame(width: 362, height: 98)
                .foregroundColor(.white)
                .shadow(color: Color(UIColor.systemGray3), radius: 6, x: 0, y: 1)
                .overlay(
                    
                    HStack {
                        ZStack {
                            Circle()
                                .frame(width: 52, height: 52)
                                .foregroundColor(Color(red: 0.847, green: 0.847, blue: 0.847))
                            Text("성태")
                                .font(.system(size: 12, weight: .semibold))
                            
                        }
                        Spacer()
                        ZStack {
                            Circle()
                                .frame(width: 52, height: 52)
                                .foregroundColor(Color(red: 0.847, green: 0.847, blue: 0.847))
                            Text("미숙")
                                .font(.system(size: 12, weight: .semibold))
                        }
                        
                        Spacer()
                        ZStack {
                            Circle()
                                .frame(width: 52, height: 52)
                                .foregroundColor(Color(red: 0.847, green: 0.847, blue: 0.847))
                            Text("경화")
                                .font(.system(size: 12, weight: .semibold))
                        }
                        
                        Spacer()
                        ZStack {
                            Circle()
                                .frame(width: 52, height: 52)
                                .foregroundColor(Color(red: 0.847, green: 0.847, blue: 0.847))
                            Text("현호")
                                .font(.system(size: 12, weight: .semibold))
                        }
                    }
                        .padding(.leading)
                        .padding(.trailing)
                    
                )
            
            
        }
        
        
    }
}

struct FamilyStatus_Previews: PreviewProvider {
    static var previews: some View {
        FamilyStatus()
    }
}
