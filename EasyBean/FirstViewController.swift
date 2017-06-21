//
//  FirstViewController.swift
//  EasyBean
//
//  Created by Yuwei Ba on 6/21/17.
//  Copyright © 2017 Watfaq. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func unwindToList(sender: UIStoryboardSegue) {
        if let srcVC = sender.source as? AddTransViewController {
            if let trans = srcVC.transaction {
                print(trans)
            }
        }
    }
}

