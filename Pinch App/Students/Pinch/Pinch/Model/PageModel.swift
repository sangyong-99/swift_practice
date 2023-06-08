//
//  PageModel.swift
//  Pinch
//
//  Created by 신상용 on 2023/06/01.
//

import Foundation


struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String{
        return "thumb-" + imageName
    }
}
