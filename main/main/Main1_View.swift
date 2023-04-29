//
//  ContentView.swift
//  ImagePick
//
//  Created by 신상용 on 2023/04/28.
//

import SwiftUI

struct Main1_View: View {
    @State var isPickerShowing = false
    @State var selectedImage: UIImage?
    var body: some View {
        VStack(alignment: .leading){
            
            Text("Page 23. 지금 당장 가고 싶은 곳")
                .font(.system(size: 17))
                .bold()
            
            
            
            
            if selectedImage != nil{
                Image(uiImage: selectedImage!)      //이미지 선택시 보여주는 코드
                    .resizable()
                    .frame(width: 200, height: 200)
            }
            //            Button {
            //                isPickerShowing = true
            //            } label: {
            //                Text("Select a Photo")
            //            }
            
            
            //Image로 대체 가능한지?
            
            ZStack {
                Rectangle()
                    .cornerRadius(8)
                    .foregroundColor(.white)
                    .frame(width: 362, height: 336)
                    .shadow(color: Color(UIColor.systemGray3), radius: 6, x: 0, y: 1)
                    .onTapGesture {
                        isPickerShowing = true
                    }
                
                VStack {
                    Text("여기에 사진은 추가 해주세요")
                        .foregroundColor(Color(red: 0.831, green: 0.831, blue: 0.831))
                        .fontWeight(.semibold)
                        .font(.system(size: 16))
                        
                    Image(systemName: "plus.circle")
                        .foregroundColor(Color(red: 0.831, green: 0.831, blue: 0.831))
                        .fontWeight(.semibold)
                        .font(.system(size: 20))
                        .padding(.top, 1)
                        
                }
            }
            
        }
        .padding(14)
        .sheet(isPresented: $isPickerShowing, onDismiss: nil) {
            // Image Picker
            ImagePicker(selectedImage: $selectedImage, isPickerShowing: $isPickerShowing)
        }
        
    }
}

struct Main1_View_Previews: PreviewProvider {
    static var previews: some View {
        Main1_View()
    }
}
