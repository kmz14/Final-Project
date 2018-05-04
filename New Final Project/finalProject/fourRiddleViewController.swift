//
//  fourRiddleViewController.swift
//  finalProject
//
//  Created by Zimpfer, Kristen M on 4/23/18.
//  Copyright © 2018 Zimpfer, Kristen M. All rights reserved.
//

import UIKit


class fourRiddleViewController: UIViewController {
    
    @IBOutlet weak var answer: UITextField!
    
    @IBAction func submit(_ sender: Any) {
        global.theFourVar = answer.text!
        yourAnswer.text =  global.theFourVar
        answer.resignFirstResponder()
        
        if (global.theFourVar == "2" ) {
            global.answerFour = 1
        }
    }
    
    

    
    @IBOutlet weak var yourAnswer: UILabel!
    
    

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

}
