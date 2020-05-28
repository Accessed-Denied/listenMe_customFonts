//
//  searchResponse.swift
//  listenMe
//
//  Created by MACBOOK on 29/05/20.
//  Copyright © 2020 SukhmaniKaur. All rights reserved.
//

import Foundation

struct searchResponse: Codable {
    var lyrics: String
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        lyrics = try values.decodeIfPresent(String.self, forKey: .lyrics) ?? ""
    }
}
