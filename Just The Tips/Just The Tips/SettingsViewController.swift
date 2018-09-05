//
//  SettingsViewController.swift
//  Just The Tips
//
//  Created by Mely Bohlman on 9/1/18.
//  Copyright © 2018 Chris Bohlman. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var field1: UITextField!
    @IBOutlet weak var field2: UITextField!
    @IBOutlet weak var field3: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        field1.insertText(UserDefaults.standard.string(forKey: "tipPerc1")!)
        field2.insertText(UserDefaults.standard.string(forKey: "tipPerc2")!)
        field3.insertText(UserDefaults.standard.string(forKey: "tipPerc3")!)
        // Do any additional setup after loading the view.
    }

    @IBAction func onField1Changed(_ sender: Any) {
        UserDefaults.standard.set(field1.text, forKey: "tipPerc1")
    }
    
    @IBAction func onField2Changed(_ sender: Any) {
        UserDefaults.standard.set(field2.text, forKey: "tipPerc2")
    }

    @IBAction func onField3Changed(_ sender: Any) {
        UserDefaults.standard.set(field3.text, forKey: "tipPerc3")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
