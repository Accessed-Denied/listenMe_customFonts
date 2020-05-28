//
//  HttpUtility.swift
//  listenMe
//
//  Created by MACBOOK on 29/05/20.
//  Copyright © 2020 SukhmaniKaur. All rights reserved.
//

import Foundation

struct HttpUtility
{
    func getApiData<T:Decodable>(requestUrl: URL, resultType: T.Type, completionHandler:@escaping(_ result: T?)-> Void)
    {
        URLSession.shared.dataTask(with: requestUrl) { (responseData, httpUrlResponse, error) in
            if(error == nil && responseData != nil && responseData?.count != 0)
            {
                let decoder = JSONDecoder()
                do {
                    let result = try decoder.decode(T.self, from: responseData!)
                    _=completionHandler(result)
                }
                catch let error{
                    debugPrint("error occured while decoding = \(error)")
                }
            }

        }.resume()
    }
}

//func httpUtility() {
//    let url = URL(string: "https://api.lyrics.ovh/v1/Maroon 5/Memories")!
//    let request = URLRequest(url: url)
//
//    let task = URLSession.shared.dataTask(with: request) { data, response, error in
//      if let response = response {
//        print(response)
//
//        if let data = data, let body = String(data: data, encoding: .utf8) {
//          print(body)
//        }
//      } else {
//        print(error ?? "Unknown error")
//      }
//    }
//
//    task.resume()
//}
