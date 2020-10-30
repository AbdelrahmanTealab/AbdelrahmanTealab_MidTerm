//
//  DisplayingListViewController.swift
//  AbdelrahmanTealab_MidTerm
//
//  Created by Abdelrahman  Tealab on 2020-10-30.
//

import UIKit

class DisplayingListViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.text="\n"
        
        guard let documents = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
        else {
            print("fail1")
            return
        }
        let file = documents.appendingPathComponent("lists.json")

        do {
            let data = try Data(contentsOf: file, options: [])
            guard let theList = try JSONSerialization.jsonObject(with: data, options: []) as? [String: [String:String]]
            else {
                print("fail2")
                return
            }
            for list in theList {
                textView.text+=list.key
                textView.text+="\n"
                textView.text+="-----------"
                for item in list.value{
                    textView.text+="\n"
                    textView.text+=item.value+" "
                    textView.text+=item.key
                }
                textView.text+="\n"
                textView.text+="\n"
                textView.text+="\n"
            }
        } catch {
            print(error)
        }
        
    }
    @IBAction func deletePressed(_ sender: UIButton) {
        let emptyList = [String:[String:String]]()
        guard let documents = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return }
        let file = documents.appendingPathComponent("lists.json")
        do {
            let data = try JSONSerialization.data(withJSONObject: emptyList, options: [])
            try data.write(to: file, options: [])
        } catch {
            print(error)
        }
    }
    
}
