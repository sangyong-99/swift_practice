//
//  ContentView.swift
//  API_Practice
//
//  Created by 신상용 on 2023/06/17.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var chargeDataManager = ChargeDataManager()
    
    var body: some View {
        VStack {
            
            Text(chargeDataManager.chargingStations?.resultMsg ?? "dd")
            Text(chargeDataManager.chargingStations?.items.item[0].statNm ?? "gg")
        }
        .padding()
        .onAppear(perform: {
            chargeDataManager.fetchDatas("https://apis.data.go.kr/B552584/EvCharger/getChargerInfo?numOfRows=10&pageNo=1&zscode=47190&dataType=JSON&serviceKey=3fN5XeyWbFOVDNr8xbmPsTXRwyTgskEJ6ghj0LFf131CQm3X52Rn%2BCMEwcttKysIzwU%2B45HuKQ4vXWX%2BC8LJ%2BQ%3D%3D")
//            sample_data()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
