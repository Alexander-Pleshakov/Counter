//
//  ViewController.swift
//  Counter
//
//  Created by Александр Плешаков on 12.11.2023.
//

import UIKit

class ViewController: UIViewController {

    private var count = 0
    
    @IBOutlet weak var counterValueLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonAddOne(_ sender: Any) {
        count += 1
        counterValueLabel.text = "Значение счетчика: \(count)"
    }
    

}

