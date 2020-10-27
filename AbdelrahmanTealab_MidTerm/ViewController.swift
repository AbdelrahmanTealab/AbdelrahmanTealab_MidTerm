//
//  ViewController.swift
//  AbdelrahmanTealab_MidTerm
//
//  Created by Abdelrahman  Tealab on 2020-10-26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var listName: UITextField!
    
    @IBOutlet weak var itemName0: UITextField!
    @IBOutlet weak var itemName1: UITextField!
    @IBOutlet weak var itemName2: UITextField!
    @IBOutlet weak var itemName3: UITextField!
    @IBOutlet weak var itemName4: UITextField!
    @IBOutlet weak var itemName5: UITextField!
    
    @IBOutlet weak var quantityLabel0: UILabel!
    @IBOutlet weak var quantityLabel1: UILabel!
    @IBOutlet weak var quantityLabel2: UILabel!
    @IBOutlet weak var quantityLabel3: UILabel!
    @IBOutlet weak var quantityLabel4: UILabel!
    @IBOutlet weak var quantityLabel5: UILabel!

    var labelsArray = [Int:UILabel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelsArray[0]=quantityLabel0
        labelsArray[1]=quantityLabel1
        labelsArray[2]=quantityLabel2
        labelsArray[3]=quantityLabel3
        labelsArray[4]=quantityLabel4
        labelsArray[5]=quantityLabel5
        
        for label in labelsArray {
            label.value.text = "0"
        }

    }

    @IBAction func stepperPressed(_ sender: UIStepper) {
        
        let stepperTag = sender.tag
        let stepperValue = String(Int(sender.value))
        
        labelsArray[stepperTag]?.text = stepperValue
    }

}

