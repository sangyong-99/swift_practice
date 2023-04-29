//
//  DiaryListRow.swift
//  main
//
//  Created by 신상용 on 2023/04/29.
//

import SwiftUI

struct DiaryListRow: View {
    @State var diaryRowData: DiaryListDataStruct
    var body: some View {
        VStack{
            HStack{
                Text("Page \(diaryRowData.page). ")
                    .padding(12)
//                    .border(Color.black, width: 1)

                Text("\(diaryRowData.question)")
//                    .border(Color.black, width: 1)
                Spacer()
                
                Image(systemName: "chevron.forward")
                    
            }
            .onTapGesture {
                print(diaryRowData.page)
            }
            Divider()
                

        }
        .padding(.top, 5)
        .padding(.bottom, 1)
        .padding(.leading, 14)
        .padding(.trailing, 14)

//        .border(Color.black, width: 1)
    }

}

struct DiaryListRow_Previews: PreviewProvider {
    static var previews: some View {
        DiaryListRow(diaryRowData: DiaryListDataStruct(page: 1, question: "지금 당장 가고 싶은 곳"))
            
    }
}
