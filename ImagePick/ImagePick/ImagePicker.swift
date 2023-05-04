//
//  ImagePicker.swift
//  ImagePick
//
//  Created by 신상용 on 2023/04/28.
//

import Foundation
import UIKit
import SwiftUI

struct ImagePicker: UIViewControllerRepresentable {
//    @StateObject var so1: dkdk
    
    @Binding var selectedImage: UIImage?
    @Binding var isPickerShowing: Bool
    func makeUIViewController(context: Context) -> some UIViewController {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate =  context.coordinator
        
        
        return imagePicker
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(self)
    }
}


class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var parent: ImagePicker
    
    init(_ picker: ImagePicker){
        self.parent = picker
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        //이미지 피커에서 이미지를 선택했을때
        print("image selected")
        
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            DispatchQueue.main.async {
                if let imageData = image.jpegData(compressionQuality: 1.0){     //image를 압축하여 imageData라는 변수에 저장
                    UserDefaults.standard.set(imageData, forKey: "selectedImage1")  //UserDefaults 에 imageData저장
                }
                
                self.parent.selectedImage = image
                
//                self.parent.so1.imagesss.append(Image(uiImage: self.parent.selectedImage!))
//                self.parent.imagess.append(Image(uiImage: self.parent.selectedImage!))
            }
                
        }
        parent.isPickerShowing = false
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        //이미지 피커에서 취소 클릭했을때
        print("cancelled")
        parent.isPickerShowing = false
    }
}
