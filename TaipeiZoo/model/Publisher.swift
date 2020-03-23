//
//  Publisher.swift
//  TaipeiZoo
//
//  Created by jht on 2020/3/20.
//  Copyright © 2020 jht. All rights reserved.
//

import Foundation
import Alamofire

class Publisher : ObservableObject {
    @Published var houses = [HouseListItem]()
//    @Published var list = Result(count: 0, limit: 0, offset: 0, results: [], sort: "")
    
    let urlStr = "https://data.taipei/opendata/datalist/apiAccess?scope=resourceAquire&rid=5a0e5fbb-72f8-41c6-908e-2fb25eff9b8a"
    
    init() {
        getData()
    }
    
    func getData(){
        AF.request(urlStr)
        .response { response in
            let decoder = JSONDecoder()
            if let data = response.data, let houseList = try? decoder.decode(HouseList.self, from: data){
                self.houses = houseList.result.results
//                self.list = houseList.result
            }
        }
    }
}
