//
//  ContentView.swift
//  ImagePick
//
//  Created by 신상용 on 2023/04/28.
//

import SwiftUI
import UIKit

struct ContentView: View {
    @State var isPickerShowing = false
//    @State var selectedImage: UIImage?
//    @State var imagess:[Image?] = []
//    @StateObject var so1: dkdk = dkdk()
    @StateObject var datasss: datas = datas()


    
    var body: some View {
        VStack{
            
//            Text("\(so1.imagesss.count)")
//            ForEach(so1.imagesss.indices, id: \.self) { index in
//                if let image = so1.imagesss[index] {
//                    image
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .frame(width: 100, height: 100)
//                }
//            }
            
//            if let image = datasss.selectedImage {
//                Image(uiImage: image)
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 100, height: 100)
//            }
            if let UserDefaults_image = UserDefaults.standard.data(forKey: "selectedImage1"),
               let image11 = UIImage(data: UserDefaults_image){
                Image(uiImage: image11)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
//                    .aspectRatio(contentMode: .fill)
                
                    .frame(width: 329, height: 219)
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
//            ImagePicker(so1: so1, selectedImage: $datasss.selectedImage, isPickerShowing: $isPickerShowing )
            ImagePicker(selectedImage: $datasss.selectedImage, isPickerShowing: $isPickerShowing )  //selectedImage 필요 없다.
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

