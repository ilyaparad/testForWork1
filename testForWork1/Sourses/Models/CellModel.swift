//
//  CellModel.swift
//  testForWork1
//
//  Created by test on 17.04.2022.
//

import Foundation

struct DataModel: Decodable {
    var resultCount: Int
    var results: [CellModel]
}

struct CellModel: Decodable {
    var trackName: String?
    var artworkUrl100: String?
}
