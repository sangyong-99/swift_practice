//
//  ZscodeData.swift
//  API_Practice
//
//  Created by 신상용 on 2023/06/18.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let zscodeData = try? JSONDecoder().decode(ZscodeData.self, from: jsonData)

import Foundation

// MARK: - ZscodeData
struct ZscodeData: Codable {
    let meta: Meta
    let documents: [Document]
}

// MARK: - Document
struct Document: Codable {
    let regionType, code, addressName, region1DepthName: String?
    let region2DepthName, region3DepthName, region4DepthName: String?
    let x, y: Double?
}

// MARK: - Meta
struct Meta: Codable {
    let totalCount: Int
}

