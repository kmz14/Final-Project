//
//  ViewController.swift
//  finalProject
//
//  Created by Zimpfer, Kristen M on 4/16/18.
//  Copyright © 2018 Zimpfer, Kristen M. All rights reserved.
//

import UIKit

struct Events: Decodable {
    let id: Int
    let score: Int
    let response: String
  
}


class Global {
    var theOneVar = String()
    var answerOne: Int = 0
    var theTwoVar: Int = 0
    var answerTwo: Int = 0
    var theThreeVar = String()
    var answerThree: Int = 0
    var theFourVar = String()
    var answerFour: Int = 0
    var total: Int = 0


    


}

let global = Global()


class ViewController: UIViewController {
    
    @IBOutlet weak var riddleOne: UILabel!
    //answer: 5
    @IBAction func oneButton(_ sender: Any) {
        global.answerOne = 0
    }
    
    @IBOutlet weak var riddleTwo: UILabel!
    //answer: 6
    @IBAction func twoButton(_ sender: Any) {
        global.answerTwo = 0
    }
    
    @IBOutlet weak var riddleThree: UILabel!
    //answer: 4
    @IBAction func threeButton(_ sender: Any) {
        global.answerThree = 0
    }
    
    @IBOutlet weak var riddleFour: UILabel!
    //answer: 2
    @IBAction func fourButton(_ sender: Any) {
        global.answerFour = 0
    }
    
    @IBOutlet weak var myTotal: UILabel!
    
    @IBOutlet weak var theEvents: UITextView!
    
    @IBAction func solve(_ sender: Any) {
       
       global.total = global.answerOne + global.answerTwo + global.answerThree + global.answerFour
        myTotal.text = "\(global.total)"
        
        
        
        
        // url for json file. Must be https and hosted on a secure server. Change the location to your json file on your server
        
        let json = "https://kristenzimpfer.com/events/events.json"
        
        // guard statements protect the app if there is no response
        guard let url = URL(string: json)
            else { return }
        
        // this area sets up a urlsession with the json
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data
                else { return }
            
            // use do, try, catch to deal with errors
            do {
                
                // JSONDecoder decodes json array. The decode must correspond to the Decodable struct named above, then use singular or plural of constant in the for and if statements.
                let events = try JSONDecoder().decode([Events].self, from: data)
                //enumerated adds the index to the array
                for (i, event) in events.enumerated() {
                    if(event.score == global.total) {
                        //must use this to change the ui element outside of the urlsession. Use of += to append to the TextView
                        DispatchQueue.main.sync {
                            self.theEvents.text! = ("\(event.response) \n")
                        }
                    }
                }
            }
                
            catch let jsonErr {
                print("Error", jsonErr)
            }
            }.resume()

        
        
        
        
        
        
        
    }
    
    
    
    
    
    
    
    
    override func viewWillAppear(_ animated: Bool){
        riddleOne.text = " \(global.theOneVar)"
        if(global.theTwoVar == 0) {
            riddleTwo.text = ""
        }
        else {
        
            riddleTwo.text = " \(global.theTwoVar)"
            
        }
        riddleThree.text = " \(global.theThreeVar)"
        riddleFour.text = " \(global.theFourVar)"
       
        
        
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

