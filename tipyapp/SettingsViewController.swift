//
//  SettingsViewController.swift
//  tipyapp
//
//  Created by Luis Contreras on 9/17/16.
//  Copyright © 2016 Luis Contreras. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var selectedControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

    @IBAction func changedTip(_ sender: AnyObject) {
        let defaults = UserDefaults.standard;
        
        defaults.set(selectedControl.selectedSegmentIndex, forKey: "currentTip");
        defaults.synchronize();

    }
}
