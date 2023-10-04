//
//  ViewController.swift
//  colorApp
//
//  Created by asmaa gamal  on 04/10/2023.
//

import UIKit

class ViewController: UIViewController {
    var colors: [UIColor] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        addColor()
        // Do any additional setup after loading the view.
    }

//    @IBAction func goToColors(_ sender: UIButton) {
//        performSegue(withIdentifier: "toColors", sender: nil)
//    }
    func addColor(){
        for _ in 0..<60 {
            colors.append(generateRandomColor())
        }
    }
}
    
//    override func performSegue(withIdentifier identifier: "toColors", sender: nil;)
    func generateRandomColor()->UIColor{
        var randomColo = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        return randomColo
    }


extension ViewController: UITableViewDelegate , UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 60
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        performSegue(withIdentifier: "toColors", sender: nil)
        guard let  cell = tableView.dequeueReusableCell(withIdentifier: "cell") else{
            return UITableViewCell()
        }
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toColors", sender: nil)
    }
}
