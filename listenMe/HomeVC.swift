//
//  ViewController.swift
//  listenMe
//
//  Created by MACBOOK on 28/05/20.
//  Copyright © 2020 SukhmaniKaur. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

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
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ResultVC") as! ResultVC
        self.navigationController?.pushViewController(vc, animated: false)
    }
}

