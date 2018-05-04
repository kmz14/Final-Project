//
//  oneRiddleViewController.swift
//  finalProject
//
//  Created by Zimpfer, Kristen M on 4/23/18.
//  Copyright © 2018 Zimpfer, Kristen M. All rights reserved.
//

import UIKit

class oneRiddleViewController: UIViewController {
    
    
    @IBOutlet weak var oneVal: UILabel!
    
    @IBOutlet weak var twoVal: UISwitch!
    
    @IBAction func switchOne(_ sender: UISwitch) {
        if sender.isOn {
            global.theOneVar = "6"
        }
        else {
            global.theOneVar = ""
        }
        oneVal.text = global.theOneVar

       
    }
    
    @IBAction func switchTwo(_ sender: UISwitch) {
        if sender.isOn {
            global.theOneVar = "9"
        }
        else {
            global.theOneVar = ""
        }
        oneVal.text = global.theOneVar
        
        

    }
    
    @IBAction func switchThree(_ sender: UISwitch) {
        if sender.isOn {
            global.theOneVar = "5"
        }
        else {
            global.theOneVar = ""
        }
        
        if (global.theOneVar == "5" ) {
            global.answerOne = 1
        }
        
        oneVal.text = global.theOneVar
        
       

    }
    
    @IBAction func switchFour(_ sender: UISwitch) {
        if sender.isOn {
            global.theOneVar = "2"
        }
        else {
            global.theOneVar = ""
        }
        oneVal.text = global.theOneVar
        
    

    }
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        global.theOneVar = "off"

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

}
