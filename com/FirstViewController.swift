//
//  FirstViewController.swift
//  com
//
//  Created by 申潤五 on 2019/7/27.
//  Copyright © 2019 申潤五. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet var name: UITextField!
    @IBOutlet var phone: UITextField!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func append(_ sender: Any) {
        
        let theName = name.text ?? ""
        let thePhone = phone.text ?? ""
        let somone = ["name":theName,"phone":thePhone]
        
        let userDefault = UserDefaults.standard
        if var savedAddbook = userDefault.value(forKey: "addbook") as? [[String:String]] {
            savedAddbook.append(somone)
            userDefault.set(savedAddbook, forKey: "addbook")
            userDefault.synchronize()
        }else{
            var addressBook = [[String:String]]()
            addressBook.append(somone)
            userDefault.set(addressBook, forKey: "addbook")
        }
    }
    
}

