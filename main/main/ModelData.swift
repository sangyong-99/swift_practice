//
//  ViewSelection.swift
//  main
//
//  Created by 신상용 on 2023/04/28.
//

import Foundation
import SwiftUI

class ViewSelection: ObservableObject {
    @Published var viewSelection: Bool = true
}

struct DiaryListDataStruct {
    var page:Int
    var question:String
}


class DiaryListData: ObservableObject {
    @Published var diaryListData:[DiaryListDataStruct] = [DiaryListDataStruct(page: 1, question: "지금 당장 가고 싶은 곳"),
                                                    DiaryListDataStruct(page: 2, question: "가족 중에 누가 제일 좋아"),
                                                    DiaryListDataStruct(page: 3, question: "오늘의 기분을 이모티콘으로!"),
                                                    DiaryListDataStruct(page: 4, question: "엄마에게 칭찬 3가지"),
                                                    DiaryListDataStruct(page: 5, question: "최근에 있었던 속상한 일"),
                                                    DiaryListDataStruct(page: 6, question: "어릴 적 꿈"),
                                                    DiaryListDataStruct(page: 7, question: "가장 좋아하는 색"),
                                                    DiaryListDataStruct(page: 8, question: "좋아하는 동물이나 식물"),
                                                    DiaryListDataStruct(page: 9, question: "지금 인생에서 후회하는 일"),
                                                    DiaryListDataStruct(page: 10, question: "가장 어려웠던 결정"),
                                                    DiaryListDataStruct(page: 11, question: "가족 여행지중 최고였던 곳"),
                                                    DiaryListDataStruct(page: 12, question: "가장 인상깊었던 생일선물"),
                                                    DiaryListDataStruct(page: 13, question: "가족이 가장 힘이된 순간"),
                                                    DiaryListDataStruct(page: 14, question: "가장 잘 나온 가족 사진은"),
    ]
}

