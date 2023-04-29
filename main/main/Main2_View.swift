//
//  Main2_View.swift
//  main
//
//  Created by 신상용 on 2023/04/29.
//

import SwiftUI

struct Main2_View: View {
    @StateObject var DLD: DiaryListData
    var body: some View {
        VStack {
            ScrollView{
                ForEach(0..<diaryListDataArray.count) {index in
                    DiaryListRow(pages: diaryListDataArray[index].page, questions: diaryListDataArray[index].question)
                    
                }
            }
            
        }
    }
}

struct Main2_View_Previews: PreviewProvider {
    static var previews: some View {
        Main2_View(DLD: DiaryListData())
    }
}
