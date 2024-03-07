//
//  ContentView.swift
//  TagView
//
//  Created by 신상용 on 10/31/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTY
    // Sample Tags
    @State private var tags: [String] = [
        "성취", "모험", "진정성", "변화", "헌신", "공동체",
        "공헌", "용기", "창의성", "배움/교육", "효율성", "공감",
        "경험", "공정", "믿음", "친구", "관대/너그러움", "성장",
        "겸손", "유머", "이상적인", "논리", "충성", "개방/수용",
        "타인의 인정", "결과 지향", "만족감", "성공", "뒷받침/서포트", "체계",
        "균형", "아름다움", "도전", "경쟁", "자신감", "일관성",
        "호기심", "자존감", "다양성", "평등", "윤리", "탁월함",
        "명성", "가족", "자유", "조화/화합", "건강", "정직/솔직함",
        "자립", "개성", "리더십", "열정", "과정 지향", "현실적인",
        "안전함", "봉사", "안정감", "팀 워크/협동", "투명성", "부",
    ]
    // Selection
    @State private var selectedTags: [String] = []
    
    var body: some View {
        VStack(spacing: 0) {
            ScrollView(.horizontal) {
                HStack(spacing: 12) {
                    ForEach(selectedTags, id: \.self) { tag in
                        
                    }
                }
                .padding(.horizontal, 15)
                .frame(height: 35)
                .padding(.vertical, 15)
            }
        }
        .preferredColorScheme(.light)
    }
    
    @ViewBuilder
    func TagView(_ tag: String, _ color: Color, _ icon: String) -> some View {
        
    }
}





#Preview {
    ContentView()
}
