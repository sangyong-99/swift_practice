//
//  API_PracticeApp.swift
//  API_Practice
//
//  Created by 신상용 on 2023/06/17.
//

import SwiftUI

@main
struct API_PracticeApp: App {
    
    @ObservedObject var chargeDataManager = ChargeDataManager()
    
    @ObservedObject var coordinateToZscodeManager = CoordinateToZscodeManager()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .onAppear(perform: {
                    chargeDataManager.fetchDatas("https://apis.data.go.kr/B552584/EvCharger/getChargerInfo?numOfRows=10&pageNo=1&zscode=47190&dataType=JSON&serviceKey=3fN5XeyWbFOVDNr8xbmPsTXRwyTgskEJ6ghj0LFf131CQm3X52Rn%2BCMEwcttKysIzwU%2B45HuKQ4vXWX%2BC8LJ%2BQ%3D%3D")
                })
                .onAppear(perform: {
                    coordinateToZscodeManager.fetchDatas("https://dapi.kakao.com/v2/local/geo/coord2regioncode.json?x=129.192243&y=36.0073880")
                })
                .environmentObject(chargeDataManager)
                .environmentObject(coordinateToZscodeManager)
        }
    }
}
