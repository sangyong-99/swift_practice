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
        ScrollView{
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
                
                let diaryRowData_Count = diaryRowData.image?.count ?? 0
                
                if(diaryRowData.image != nil){
                    
                    
                    
                    
                    ForEach (0..<diaryRowData_Count){index in
                        if index % 2 == 0 {
                            VStack {
                                HStack{
                                    if let imagess = diaryRowData.image![index]{
                                        imagess
                                            .resizable()
                                            .frame(width: 150, height: 150)
                                    }else{
                                        Image("noImage")
                                            .resizable()
                                            .frame(width: 150, height: 150)
                                    }
                                    Spacer()
                                    if index + 1 < diaryRowData_Count{
                                        if let imagess = diaryRowData.image![index + 1]{
                                            imagess
                                                .resizable()
                                                .frame(width: 150, height: 150)
                                        }else{
                                            Image("noImage")
                                                .resizable()
                                                .frame(width: 150, height: 150)
                                        }
                                    }
                                    
                                }
                            }
                            .padding(20)
                        }
                    }
                }else {
                    Text("가족 전체 안함")
                }
            }
            .padding(.top, 100)
        }
    }
}

struct DiaryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DiaryDetailView(diaryRowData: DiaryListDataStruct(page: 1, question: "지금 당장 가고 싶은 곳", image: [Image("1"), nil, Image("3"), Image("4")]))
    }
}
