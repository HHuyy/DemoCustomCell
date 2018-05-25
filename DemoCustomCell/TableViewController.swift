//
//  TableViewController.swift
//  DemoCustomCell
//
//  Created by tham gia huy on 5/15/18.
//  Copyright © 2018 tham gia huy. All rights reserved.
//

import UIKit


class TableViewController: UITableViewController {

    var fruitsName = ["Apple", "Banana", "Grapes"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitsName.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        let fruitName = fruitsName[indexPath.row]
        cell.textField1.text = fruitName
        cell.textField2.text = "Delicious!"
        cell.textField3.text = "1$"
        cell.FruitsImageView?.image = UIImage(named: fruitName)
        
        return cell
    }
}
