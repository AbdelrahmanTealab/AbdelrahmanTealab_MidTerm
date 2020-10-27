//
//  ViewController.swift
//  AbdelrahmanTealab_MidTerm
//
//  Created by Abdelrahman  Tealab on 2020-10-26.
//  Student ID: 301164103

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var listName: UITextField!
    /*----------------------------------------------
     The item name labels currently have no usage at all
     but i connected them anyway incase there is a future
     usage for them.
     ----------------------------------------------*/
    @IBOutlet weak var itemName0: UITextField!
    @IBOutlet weak var itemName1: UITextField!
    @IBOutlet weak var itemName2: UITextField!
    @IBOutlet weak var itemName3: UITextField!
    @IBOutlet weak var itemName4: UITextField!
    @IBOutlet weak var itemName5: UITextField!
    /*----------------------------------------------
     Quantity labels are the labels that show the value
     of the steppers when incrementing or decrementing.
     ----------------------------------------------*/
    @IBOutlet weak var quantityLabel0: UILabel!
    @IBOutlet weak var quantityLabel1: UILabel!
    @IBOutlet weak var quantityLabel2: UILabel!
    @IBOutlet weak var quantityLabel3: UILabel!
    @IBOutlet weak var quantityLabel4: UILabel!
    @IBOutlet weak var quantityLabel5: UILabel!
    /*----------------------------------------------
     The Purpose of the stepper outlets is only for
     the cancel button so that i can reset their values
     back to 0.0
     ----------------------------------------------*/
    @IBOutlet weak var stepperOutlet0: UIStepper!
    @IBOutlet weak var stepperOutlet1: UIStepper!
    @IBOutlet weak var stepperOutlet2: UIStepper!
    @IBOutlet weak var stepperOutlet3: UIStepper!
    @IBOutlet weak var stepperOutlet4: UIStepper!
    @IBOutlet weak var stepperOutlet5: UIStepper!
    /*----------------------------------------------
     The dictionaries below are label and stepper
     dictionary they will store the above outlets so
     that i can easily loop them and manipulate their
     values.
     ----------------------------------------------*/
    var textsDict = [Int:UITextField]()
    var labelsDict = [Int:UILabel]()
    var steppersDict = [Int:UIStepper]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*----------------------------------------------
         In viewDidLoad, i populate the dictionaries with
         the outlets and then call function reset().
         ----------------------------------------------*/
        textsDict[0]=itemName0
        textsDict[1]=itemName1
        textsDict[2]=itemName2
        textsDict[3]=itemName3
        textsDict[4]=itemName4
        textsDict[5]=itemName5
        
        labelsDict[0]=quantityLabel0
        labelsDict[1]=quantityLabel1
        labelsDict[2]=quantityLabel2
        labelsDict[3]=quantityLabel3
        labelsDict[4]=quantityLabel4
        labelsDict[5]=quantityLabel5
        
        steppersDict[0]=stepperOutlet0
        steppersDict[1]=stepperOutlet1
        steppersDict[2]=stepperOutlet2
        steppersDict[3]=stepperOutlet3
        steppersDict[4]=stepperOutlet4
        steppersDict[5]=stepperOutlet5
        
        reset()
        
    }
    
    func reset(){
        /*----------------------------------------------
         This function will be called when Cancel button
         is pressed, it will basically reset the values
         of the steppers, labels, textfields and list name.
         ----------------------------------------------*/
        for label in labelsDict {
            label.value.text = "0"
        }
        for stepper in steppersDict {
            stepper.value.value = 0.0
        }
        for texts in textsDict {
            texts.value.text = nil
        }
        listName.text = "Shopping List" //by default
    }
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
        /*----------------------------------------------
         When incrementing or decrementing the steppers,
         i make use of the 'Tag' attribute to identify
         which stepper was pressed, then i adjust the
         label associated with the same tag number in the
         labels dictionary.
         ----------------------------------------------*/
        let stepperTag = sender.tag
        let stepperValue = String(Int(sender.value))
        
        labelsDict[stepperTag]?.text = stepperValue
    }
    
    @IBAction func cancelPressed(_ sender: UIButton) {
        /*----------------------------------------------
         Cancel button calls the function reset() above.
         ----------------------------------------------*/
        reset()
    }
    
    @IBAction func savePressed(_ sender: UIButton) {
        /*----------------------------------------------
         For future.
         ----------------------------------------------*/
    }
}
