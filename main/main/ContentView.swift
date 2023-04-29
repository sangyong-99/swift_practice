//
//  ContentView.swift
//  main
//
//  Created by 신상용 on 2023/04/28.
//

import SwiftUI

struct ContentView: View {
    @StateObject var VSClass: ViewSelection = ViewSelection()
    @StateObject var DLD: DiaryListData = DiaryListData()
    var body: some View {
        VStack {
            
            TopView()
                .padding(.top, 23)
            
            Two_Button(VSClass: VSClass)
                .padding(.top, 10)
            if VSClass.viewSelection{
                Main1_View()
                FamilyStatus()
                Spacer()
                
            }
            else {
                Main2_View(DLD: DLD)
                
                Spacer()
            }
        }
        .ignoresSafeArea()
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
