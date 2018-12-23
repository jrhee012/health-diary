//
//  EntryFormViewController.swift
//  health_diary
//
//  Created by Jaehyuk Rhee on 12/22/18.
//  Copyright © 2018 Jaehyuk Rhee. All rights reserved.
//

import UIKit

class EntryFormViewController: UIViewController {
    @IBAction func datePicker(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        let strDate = dateFormatter.string(from: sender.date)
        
        print(strDate)
    }
    
    @IBAction func saveButton(_ sender: Any) {
        print("save button!!!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        self.title = "New Diary"
    }
}

