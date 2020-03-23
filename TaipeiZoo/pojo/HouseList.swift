

import Foundation

struct HouseList : Codable {

	let result : Result

}

struct Result : Codable {

    let count : Int
    let limit : Int
    let offset : Int
    let results : [HouseListItem]
    let sort : String
    
    enum CodingKeys: String, CodingKey {
        case count = "count"
        case limit = "limit"
        case offset = "offset"
        case results = "results"
        case sort = "sort"
    }

}

