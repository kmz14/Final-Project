//
//  threeRiddleViewController.swift
//  finalProject
//
//  Created by Zimpfer, Kristen M on 4/23/18.
//  Copyright © 2018 Zimpfer, Kristen M. All rights reserved.
//

import UIKit

class threeRiddleViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var selection:String!
    let items = ["Select Your Answer", "4", "8", "6", "2"]
    
    @IBOutlet weak var picker: UIPickerView!
    
    @IBOutlet weak var selectedLabel: UILabel!
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return items[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selection = items[row]
        selectedLabel.text = selection
        global.theThreeVar = selection
        
        if (global.theThreeVar == "4" ) {
            global.answerThree = 1
        }


    }

    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.dataSource = self


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
