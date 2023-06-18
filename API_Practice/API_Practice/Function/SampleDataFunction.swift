//
//  Function.swift
//  API_Practice
//
//  Created by 신상용 on 2023/06/18.
//

import Foundation


func sample_data() {
    var request = URLRequest(url: URL(string: "https://apis.data.go.kr/B552584/EvCharger/getChargerInfo?numOfRows=9&pageNo=1&zcode=47&zscode=47130&dataType=JSON&serviceKey=3fN5XeyWbFOVDNr8xbmPsTXRwyTgskEJ6ghj0LFf131CQm3X52Rn%2BCMEwcttKysIzwU%2B45HuKQ4vXWX%2BC8LJ%2BQ%3D%3D")!,timeoutInterval: Double.infinity)
    request.httpMethod = "GET"

    let task = URLSession.shared.dataTask(with: request) { data, response, error in
      guard let data = data else {
        print(String(describing: error))
        return
      }
        let chargingStation = try? JSONDecoder().decode(ChargingStation.self, from: data)
        print(chargingStation?.totalCount)
        print(chargingStation?.items.item[0].statNm)
//            print(String(data: data, encoding: .utf8)!)
    }

    task.resume()

}
