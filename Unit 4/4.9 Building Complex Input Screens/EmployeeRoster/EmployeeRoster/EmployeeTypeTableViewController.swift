//
//  EmployeeTypeTableViewController.swift
//  EmployeeRoster
//
//  Created by Michael Westerby on 23/05/2020.
//

import UIKit

protocol EmployeeTypeDelegate {
    func didSelect(employeeType: EmployeeType)
}

class EmployeeTypeTableViewController: UITableViewController {
    
    var employeeType: EmployeeType?
    var delegate: EmployeeTypeDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return EmployeeType.all.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "employeeType", for: indexPath)
        let type = EmployeeType.all[indexPath.row]
        cell.textLabel?.text = type.description()

        if employeeType == type {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        let selectedType = EmployeeType.all[indexPath.row]
        employeeType = selectedType
        delegate?.didSelect(employeeType: selectedType)
        tableView.reloadData()
    }

}
