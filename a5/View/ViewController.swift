//
//  ViewController.swift
//  a5
//
//  Created by Brandon  Miller on 2/19/23.
//

import UIKit

class ViewController: UIViewController {

    var logic = Logic()
    
    @IBOutlet weak var usdInput: UITextField!
    
    @IBOutlet weak var convertButton: UIButton!

    @IBAction func cadsw(_ sender: UISwitch) {
        if sender.isOn {
            logic.CADON = true
        }
        else {
            logic.CADON = false
        }
        
    }
    
    @IBAction func eursw(_ sender: UISwitch) {
        if sender.isOn {
            logic.EURON = true
        }
        else {
            logic.EURON = false
        }
    }
    @IBAction func mxnsw(_ sender: UISwitch) {
        if sender.isOn {
            logic.MXNON = true
        }
        else {
            logic.MXNON = false
        }
    }
    @IBAction func cnysw(_ sender: UISwitch) {
        if sender.isOn {
            logic.CNYON = true
        }
        else {
            logic.CNYON = false
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func convert(_ sender: UIButton) {
        logic.usd = usdInput.text ?? ""
        self.performSegue(withIdentifier: "toResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResult" {
            let navigation = segue.destination as! ResultView
            navigation.amount = logic.getUSDFromString()
            navigation.logic = logic
        }    }
    
}

