//
//  practice.swift
//  main
//
//  Created by 신상용 on 2023/04/29.
//

import SwiftUI

struct practice: View {
    @State var diaryListData: [Int: String] = [1: "지금 당장 가고 싶은 곳",
                                        2: "가족 중에 누가 제일 좋아",
                                        3: "오늘의 기분을 이모티콘으로!",
                                        4: "엄마에게 칭찬 3가지",
                                        5: "최근에 있었던 속상한 일",
                                        6: "어릴 적 꿈",
                                        7: "가장 좋아하는 색",
                                        8: "좋아하는 동물이나 식물",
                                        9: "지금 인생에서 후회하는 일",
                                        10: "가장 어려웠던 결정",
                                        11: "가족 여행지중 최고였던 곳",
                                        12: "가장 인상깊었던 생일선물",
                                        13: "가족이 가장 힘이된 순간",
                                        14: "가장 잘 나온 가족 사진은"]
    var body: some View {
        VStack {
            ForEach(diaryListData.sorted(by: <), id: \.0) { key, value in
                HStack {
                    Text("\(key)")
                    Text("\(value)")
                }
            }
        }
    }
}

struct practice_Previews: PreviewProvider {
    static var previews: some View {
        practice()
    }
}
