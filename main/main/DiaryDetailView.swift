//
//  DiaryDetailView.swift
//  main
//
//  Created by 신상용 on 2023/04/29.
//

import SwiftUI
import Foundation
struct DiaryDetailView: View {
    @State var diaryRowData: DiaryListDataStruct
    
    var body: some View {
        VStack{
//            ForEach(diaryRowData.image!, id: \.self){image in
//                image!
//            }
//            diaryRowData.image![1] 출력하는 방법
            
//            if diaryRowData.image![1] != nil {
//                Text("yes")
//            } else {
//                Text("no")
//            }
            
//            diaryRowData.image![0]
            
            let dkdk = diaryRowData.image?.count ?? 0
            if(diaryRowData.image != nil){
                
                    
                
                
                ForEach (0..<dkdk){index in
                    if let imagess = diaryRowData.image![index]{
                        imagess
                            .resizable()
                            .frame(width: 300, height: 300)
                    }else{
                        Text("이미지 아직 안올림")
                    }
                }
            }else {
                Text("\(dkdk)")
                Text("가족 전체 안함")
            }
        }
        
    }
}

struct DiaryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DiaryDetailView(diaryRowData: DiaryListDataStruct(page: 1, question: "지금 당장 가고 싶은 곳"))
    }
}
