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

  override func viewDidLoad() {
    super.viewDidLoad()
    self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
  }
}

extension ViewController: UITableViewDataSource {

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 100
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else { fatalError() }
    cell.textLabel?.text = "Row \(indexPath.item + 1)"
    return cell
  }
}

extension ViewController: UITableViewDelegate {

  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print("Selected row \(indexPath.item + 1)")
    tableView.deselectRow(at: indexPath, animated: true)
  }
}
