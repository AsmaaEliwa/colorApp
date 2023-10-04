//
//  ViewController.swift
//  colorApp
//
//  Created by asmaa gamal  on 04/10/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToColors(_ sender: UIButton) {
        performSegue(withIdentifier: "toColors", sender: nil)
    }
    
    
//    override func performSegue(withIdentifier identifier: "toColors", sender: nil;)
}

