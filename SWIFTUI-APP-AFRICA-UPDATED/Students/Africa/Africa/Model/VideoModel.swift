//
//  VideoModel.swift
//  Africa
//
//  Created by 신상용 on 2023/06/04.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String{
        "video-\(id)"
    }
}
