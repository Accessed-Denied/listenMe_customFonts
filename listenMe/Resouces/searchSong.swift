//
//  searchSong.swift
//  listenMe
//
//  Created by MACBOOK on 29/05/20.
//  Copyright © 2020 SukhmaniKaur. All rights reserved.
//

import Foundation

struct searchSong {
    
    func song(request: searchRequest, completion: @escaping(_ result: searchResponse) -> Void) {
        let loginUrl = URL(string: "https://api.lyrics.ovh/v1/Maroon 5/Memories")!
        let httpUtility = HttpUtility()
        do {
            let loginPostBody = try JSONEncoder().encode(request)
            httpUtility.getApiData(requestUrl: loginUrl, resultType: searchResponse.self) { (response) in
                _ = completion(response!)
            }
        }
        catch let error {
            print(error)
        }
    }
}
