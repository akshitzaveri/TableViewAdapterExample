//
//  TableViewAdapter.swift
//  TableViewAdapterExample
//
//  Created by Akshit Zaveri on 04/05/20.
//  Copyright © 2020 Akshit Zaveri. All rights reserved.
//

import UIKit

final class TableViewAdapter: NSObject, UITableViewDataSource {

  let tableView: UITableView

  init(tableView: UITableView) {
    self.tableView = tableView
    super.init()

    self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")

    self.tableView.dataSource = self
    self.tableView.delegate = self
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 100
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else { fatalError() }
    cell.textLabel?.text = "Row \(indexPath.item + 1)"
    return cell
  }
}

extension TableViewAdapter: UITableViewDelegate {

  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print("Selected row \(indexPath.item + 1)")
    tableView.deselectRow(at: indexPath, animated: true)
  }
}
