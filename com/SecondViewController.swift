//
//  SecondViewController.swift
//  com
//
//  Created by 申潤五 on 2019/7/27.
//  Copyright © 2019 申潤五. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    

    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    //MARK: Tableveiw Delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
}

