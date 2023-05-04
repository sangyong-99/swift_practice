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
    @StateObject var so1: dkdk = dkdk()
    
    
    var body: some View {
        VStack{
            
            Text("\(so1.imagesss.count)")
            ForEach(so1.imagesss.indices, id: \.self) { index in
                if let image = so1.imagesss[index] {
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
            ImagePicker(so1: so1, selectedImage: $selectedImage, isPickerShowing: $isPickerShowing )
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

