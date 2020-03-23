//
//  House.swift
//  TaipeiZoo
//
//  Created by jht on 2020/3/19.
//  Copyright © 2020 jht. All rights reserved.
//

import Foundation

struct HouseListItem : Codable, Identifiable {
    
    let eCategory : String
    let eGeo : String
    let eInfo : String
    let eMemo : String
    let eName : String
    let ePicURL : String
    let eURL : String
    let eNo : String
    let id : Int
    
    enum CodingKeys: String, CodingKey {
        case eCategory = "E_Category"
        case eGeo = "E_Geo"
        case eInfo = "E_Info"
        case eMemo = "E_Memo"
        case eName = "E_Name"
        case ePicURL = "E_Pic_URL"
        case eURL = "E_URL"
        case eNo = "E_no"
        case id = "_id"
    }
    
}
