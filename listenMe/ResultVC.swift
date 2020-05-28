//
//  ResultVC.swift
//  listenMe
//
//  Created by MACBOOK on 29/05/20.
//  Copyright © 2020 SukhmaniKaur. All rights reserved.
//

import UIKit

class ResultVC: UIViewController {
    
    var lyrics: String = ""

    @IBOutlet weak var songTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        print(lyrics)
        songTextView.text = lyrics
        // Do any additional setup after loading the view.
    }
    
    //MARK: - viewWillAppear
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }

    //MARK: - backBtnIsClicked
    @IBAction func backBtnIsClicked(_ sender: UIBarButtonItem) {
        self.navigationController?.popViewController(animated: false)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
