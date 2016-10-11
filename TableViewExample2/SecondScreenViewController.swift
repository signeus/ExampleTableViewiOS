//
//  SecondScreenViewController.swift
//  TableViewExample2
//
//  Created by Kevin on 11/10/16.
//  Copyright © 2016 Kevin. All rights reserved.
//

import UIKit

class SecondScreenViewController: UIViewController {

    var texto : String = ""
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textLabel.text = texto    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
