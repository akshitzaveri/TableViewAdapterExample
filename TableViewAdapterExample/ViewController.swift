//
//  ViewController.swift
//  TableViewAdapterExample
//
//  Created by Akshit Zaveri on 04/05/20.
//  Copyright © 2020 Akshit Zaveri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var tableView: UITableView!

  private var adapter: TableViewAdapter!

  override func viewDidLoad() {
    super.viewDidLoad()
    self.adapter = TableViewAdapter(tableView: self.tableView)
  }
}
