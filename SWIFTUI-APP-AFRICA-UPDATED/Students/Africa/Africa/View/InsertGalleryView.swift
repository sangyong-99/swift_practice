//
//  InsertGalleryView.swift
//  Africa
//
//  Created by 신상용 on 2023/06/04.
//

import SwiftUI

struct InsertGalleryView: View {
    // MARK: - PROPERTY
    
    let animal:Animal
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack (alignment: .center, spacing: 15){
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                } //: LOOP
            } //: HSTACK
        } //: SCROLL
    }
}

struct InsertGalleryView_Previews: PreviewProvider {
    static let animals:[Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsertGalleryView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
