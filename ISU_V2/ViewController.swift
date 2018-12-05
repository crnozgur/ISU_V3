//
//  ViewController.swift
//  ISU_V2
//
//  Created by EtkinlikBilgisayar on 6.10.2018.
//  Copyright © 2018 EtkinlikBilgisayar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var image_view: UIImageView!
    @IBOutlet weak var btn_start_o: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func Btn_Start(_ sender: Any) {
    performSegue(withIdentifier: "GoSecondPage", sender: nil)
    
    }
    
}

