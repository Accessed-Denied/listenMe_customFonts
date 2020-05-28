//
//  ViewController.swift
//  listenMe
//
//  Created by MACBOOK on 28/05/20.
//  Copyright © 2020 SukhmaniKaur. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    
    var lyrics: String = ""

    @IBOutlet weak var searchBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configUI()
    }
    
    //MARK: - viewWillAppear
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

    //MARK: - configUI
    private func configUI() {
        searchBtn.layer.cornerRadius = searchBtn.frame.height / 2
    }

    //MARK: - searchBtnIsClicked
    @IBAction func searchBtnIsClicked(_ sender: UIButton) {
        httpUtility()
        
    }
    
    func httpUtility() {
        let url = URL(string: "https://api.lyrics.ovh/v1/Maroon_5/Memories")
        let request = URLRequest(url: url!)
    
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
          if let response = response {
            print("1\(response)")
    
            if let data = data, let body = String(data: data, encoding: .utf8) {
              print("2\(body)")
                DispatchQueue.main.async {
                    let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ResultVC") as! ResultVC
                    vc.lyrics = body
                    self.navigationController?.pushViewController(vc, animated: false)
                }
            }
          } else {
            print(error ?? "Unknown error")
          }
        }
    
        task.resume()
    }

}
