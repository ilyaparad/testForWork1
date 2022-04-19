//
//  CellModel.swift
//  testForWork1
//
//  Created by test on 17.04.2022.
//

import Foundation

struct DataModel: Decodable {
    var resultCount: Int
    var results: [SongCellModel]
}

struct SongCellModel: Decodable {
    var trackName: String?
    var artworkUrl100: String?
}
