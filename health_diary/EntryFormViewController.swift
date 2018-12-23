//
//  EntryFormViewController.swift
//  health_diary
//
//  Created by Jaehyuk Rhee on 12/22/18.
//  Copyright © 2018 Jaehyuk Rhee. All rights reserved.
//

import UIKit

class EntryFormViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var datePickerUI: UIDatePicker!
    @IBOutlet weak var entryTextView: UITextView!
    
    @IBAction func titleInput(_ sender: UITextField) {
        print(sender.text!)
    }
    
    @IBAction func datePicker(_ sender: UIDatePicker) {
        let strDate = self.converDatePickerToString(datePicker: sender)
        print(strDate)
    }
    
    @IBAction func saveButton(_ sender: Any) {
        print("save button!!!")
        
        let entryTitleString: String = titleTextField.text!
        
        if entryTitleString == "" {
            let alert = UIAlertController(title: "Alert", message: "Title cannot be blank!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
                NSLog("The \"Empty Diary Title\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
            return
        }
        
        let dateString: String = self.converDatePickerToString(datePicker: datePickerUI)
        
        let entryString: String = entryTextView.text!
        
        if entryString == "" {
            let alert = UIAlertController(title: "Alert", message: "Entry cannot be blank!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
                NSLog("The \"Empty Diary Entry\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
            return
        }
        
        print("Params:")
        print(entryTitleString, dateString, entryString)
        
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        self.title = "New Diary"
    }
    
    private func converDatePickerToString(datePicker: UIDatePicker) -> String {
        let dateFormatter = DateFormatter()
    
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
    
        let strDate = dateFormatter.string(from: datePicker.date)
        return strDate
    }
}
