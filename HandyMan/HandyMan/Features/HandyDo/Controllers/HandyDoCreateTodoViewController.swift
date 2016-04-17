//
//  HandyDoCreateTodoViewController.swift
//  HandyMan
//
//  Created by Don Johnson on 12/13/15.
//  Copyright © 2015 Don Johnson. All rights reserved.
//

import UIKit

class HandyDoCreateTodoViewController: HMViewController {
    
    var handyDoList: HandyDoList = HandyDoList()
    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var descriptionField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Control Events
    
    @IBAction func create(sender: UIButton) {
        let handyDo = HandyDo(id: 0, title: titleField.text!, todo: descriptionField.text!, status: "1", dateTime: "")
        self.handyDoList.handyDoList.append(handyDo)
        self.handyDoBusinessService.createHandyDo(handyDo) { response in
            self.dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    @IBAction func done(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
  
    // MARK: Lazy Loaded Properties
    
    lazy var handyDoBusinessService: HandyDoBusinessService = {
        let businessService = HandyDoBusinessService(uiDelegate: self)
        return businessService
    }()
    
}
