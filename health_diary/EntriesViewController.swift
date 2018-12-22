//
//  EntriesViewController
//  health_diary
//
//  Created by Jaehyuk Rhee on 12/22/18.
//  Copyright © 2018 Jaehyuk Rhee. All rights reserved.
//

import UIKit

class EntriesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "Home"
//        self.renderView()
    }

    func renderView() {
        let view = self.view as UIView
        let centerView = UIView()
        centerView.translatesAutoresizingMaskIntoConstraints = false
//        centerView.backgroundColor = UIColor.white
        view.addSubview(centerView)
        centerView.leftAnchor.constraint(equalTo: view.safeLeftAnchor, constant: 0).isActive = true
        centerView.rightAnchor.constraint(equalTo: view.safeRightAnchor, constant: 0).isActive = true
        centerView.topAnchor.constraint(equalTo: view.safeTopAnchor, constant: 0).isActive = true
        centerView.bottomAnchor.constraint(equalTo: view.safeBottomAnchor, constant: 0).isActive = true
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Testing"
        label.textColor = UIColor.black
//        label.backgroundColor = UIColor.yellow
        centerView.addSubview(label)
        label.leftAnchor.constraint(equalTo: centerView.leftAnchor).isActive = true
        label.topAnchor.constraint(equalTo: centerView.topAnchor).isActive = true
        
        view.layoutIfNeeded()
    }
}

