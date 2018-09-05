//
//  ViewController.swift
//  Just The Tips
//
//  Created by Mely Bohlman on 9/1/18.
//  Copyright © 2018 Chris Bohlman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalAmt: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipAmt: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewWillAppear(_ animated: Bool) {
            print("hello")
        tipControl.setTitle(UserDefaults.standard.string(forKey: "tipPerc1")!+"%", forSegmentAt: 0)
        tipControl.setTitle(UserDefaults.standard.string(forKey: "tipPerc2")!+"%", forSegmentAt: 1)
        tipControl.setTitle(UserDefaults.standard.string(forKey: "tipPerc3")!+"%", forSegmentAt: 2)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        billField.becomeFirstResponder();
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("hi")
        // Do any additional setup after loading the view, typically from a nib.
        UserDefaults.standard.set(15, forKey:"tipPerc1")
        UserDefaults.standard.set(18, forKey:"tipPerc2")
        UserDefaults.standard.set(20, forKey:"tipPerc3")
        tipControl.setTitle(UserDefaults.standard.string(forKey: "tipPerc1")!+"%", forSegmentAt: 0)
        tipControl.setTitle(UserDefaults.standard.string(forKey: "tipPerc2")!+"%", forSegmentAt: 1)
        tipControl.setTitle(UserDefaults.standard.string(forKey: "tipPerc3")!+"%", forSegmentAt: 2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let tip1 = Double(UserDefaults.standard.string(forKey: "tipPerc1")!)!/100
        let tip2 = Double(UserDefaults.standard.string(forKey: "tipPerc2")!)!/100
        let tip3 = Double(UserDefaults.standard.string(forKey: "tipPerc3")!)!/100
        let tipPercentages = [tip1, tip2, tip3]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipAmt.text = String(format: "$%.2f", tip)
        totalAmt.text = String(format: "$%.2f", total)
    }
}

