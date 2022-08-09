//
//  ViewController.swift
//  Tasbeeh_counter
//
//  Created by SHUAA on 01/12/1443 AH.
//

import UIKit

class ViewController: UIViewController {
var countTxt = 0
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBAction func startCountButton(_ sender: Any) {
        countTxt += 1
           counterLabel.text = ("\(countTxt)")
    }
    @IBAction func restartButton(_ sender: Any) {
        countTxt = 0
        counterLabel.text = ("\(countTxt)")
    }
    override func viewDidLoad() {
        countTxt = 0
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

