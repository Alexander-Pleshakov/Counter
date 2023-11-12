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
    @IBOutlet weak var subtractButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var logTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logTextView.text = "История изменений:\n"
    }
    
    
    @IBAction func buttonAddOne(_ sender: Any) {
        count += 1
        counterValueLabel.text = "Значение счетчика: \(count)"
        logTextView.text += "[\(Date().formatted(date: .numeric, time: .standard))]: значение изменено на +1\n"
    }
    
    @IBAction func buttonSubtractOne(_ sender: Any) {
        guard count > 0 else {
            logTextView.text += "[\(Date().formatted(date: .numeric, time: .standard))]: попытка уменьшить значение счётчика ниже 0\n"
            return
        }
        count -= 1
        counterValueLabel.text = "Значение счетчика: \(count)"
        logTextView.text += "[\(Date().formatted(date: .numeric, time: .standard))]: значение изменено на -1\n"
    }
    
    @IBAction func buttonClear(_ sender: Any) {
        count = 0
        counterValueLabel.text = "Значение счетчика: 0"
        logTextView.text += "[\(Date().formatted(date: .numeric, time: .standard))]: значение сброшено\n"
    }
}

