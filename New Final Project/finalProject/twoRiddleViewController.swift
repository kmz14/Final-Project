//
//  twoRiddleViewController.swift
//  finalProject
//
//  Created by Zimpfer, Kristen M on 4/23/18.
//  Copyright © 2018 Zimpfer, Kristen M. All rights reserved.
//

import UIKit

class twoRiddleViewController: UIViewController {
    
    
    @IBOutlet weak var answerVal: UILabel!
    
    
    @IBAction func mySlider(_ sender: UISlider) {
        global.theTwoVar = Int(sender.value)
        answerVal.text = "\(global.theTwoVar)"

        if (global.theTwoVar == 6 ) {
            global.answerTwo = 1
        }
    }
    
    
    
    
    
    
    
    

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
