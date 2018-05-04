//
//  answerViewController.swift
//  finalProject
//
//  Created by Zimpfer, Kristen M on 4/23/18.
//  Copyright © 2018 Zimpfer, Kristen M. All rights reserved.
//

import UIKit

class answerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let items = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    var selection:String!


    
    @IBOutlet weak var answer: UILabel!
    
    @IBOutlet weak var answerPicker: UIPickerView!
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 4
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return items[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selection = items[row]
        answer.text = selection
    }

    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        answerPicker.delegate = self
        answerPicker.dataSource = self

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
