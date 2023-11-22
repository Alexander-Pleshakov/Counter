//
//  ViewController.swift
//  Counter
//
//  Created by Александр Плешаков on 12.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private var count: Int = 0 {
        didSet {
            counterValueLabel.text = String(count)
        }
    }
    
    private var logText: String = "История изменений:\n" {
        didSet {
            logTextView.text = "История изменений:\n\n" + logText
        }
    }
    
    @IBOutlet weak private var counterValueLabel: UILabel!
    @IBOutlet weak private var addButton: UIButton!
    @IBOutlet weak private var subtractButton: UIButton!
    @IBOutlet weak private var clearButton: UIButton!
    @IBOutlet weak private var logTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logTextView.text = "История изменений:\n"
    }
    
    
    @IBAction private func buttonAddOne(_ sender: Any) {
        count += 1
        logText = "[\(Date().formatted(date: .numeric, time: .standard))]: значение изменено на +1\n" + logText
    }
    
    @IBAction private func buttonSubtractOne(_ sender: Any) {
        guard count > 0 else {
            logText = "[\(Date().formatted(date: .numeric, time: .standard))]: попытка уменьшить значение счётчика ниже 0\n" + logText
            return
        }
        count -= 1
        logText = "[\(Date().formatted(date: .numeric, time: .standard))]: значение изменено на -1\n" + logText
    }
    
    @IBAction private func buttonClear(_ sender: Any) {
        count = 0
        logText = "[\(Date().formatted(date: .numeric, time: .standard))]: значение сброшено\n" + logText
    }
}

