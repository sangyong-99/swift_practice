//
//  ContentView.swift
//  ImagePick
//
//  Created by 신상용 on 2023/04/28.
//

import SwiftUI

struct ContentView: View {
    @State var isPickerShowing = false
    @State var selectedImage: UIImage?
    @State var imagess:[Image?] = []
    var body: some View {
        VStack{
            Text("\(imagess.count)")
            ForEach(imagess.indices, id: \.self) { index in
                if let image = imagess[index] {
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                }
            }
            
//            if selectedImage != nil{
//                Image(uiImage: selectedImage!)
//                    .resizable()
//                    .frame(width: 200, height: 200)
//            }
            Button {
                isPickerShowing = true
            } label: {
                Text("Select a Photo")
            }
        }
        .sheet(isPresented: $isPickerShowing, onDismiss: nil) {
            // Image Picker
            ImagePicker(imagess: $imagess, selectedImage: $selectedImage, isPickerShowing: $isPickerShowing )
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

