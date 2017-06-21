//
//  AddTransViewController.swift
//  EasyBean
//
//  Created by Yuwei Ba on 6/21/17.
//  Copyright © 2017 Watfaq. All rights reserved.
//

import UIKit

class AddTransViewController: UIViewController {
    
    var transaction: Transaction?
    var created: Date?

    @IBOutlet weak var accountField: UITextField!
    @IBOutlet weak var moneyField: UITextField!
    @IBOutlet weak var dateField: UITextField!
    @IBOutlet weak var descriptionField: UITextView!
    
    
    @IBAction func dismiss(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        transaction = Transaction(accountId: Int(accountField.text!)!, money: Int(moneyField.text!)!, description: descriptionField.text, created: created)
    }
    
    @IBAction func onChooseDate(_ sender: UITextField) {
        let datePickerView: UIDatePicker = UIDatePicker()
        datePickerView.datePickerMode = UIDatePickerMode.date
        sender.inputView = datePickerView
        datePickerView.addTarget(self, action: #selector(AddTransViewController.datePickerValueChanged), for: UIControlEvents.valueChanged)
    }
    
    func datePickerValueChanged(sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        dateField.text = dateFormatter.string(from: sender.date)
        created = sender.date
    }
}
