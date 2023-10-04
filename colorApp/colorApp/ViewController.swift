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

//    @IBAction func goToColors(_ sender: UIButton) {
//        performSegue(withIdentifier: "toColors", sender: nil)
//    }
    
    
//    override func performSegue(withIdentifier identifier: "toColors", sender: nil;)
}

extension ViewController: UITableViewDelegate , UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 60
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        performSegue(withIdentifier: "toColors", sender: nil)
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toColors", sender: nil)
    }
}
