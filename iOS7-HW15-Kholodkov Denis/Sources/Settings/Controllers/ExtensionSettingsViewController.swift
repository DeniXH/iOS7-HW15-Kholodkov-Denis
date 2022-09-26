//
//  ExtensionSettingsViewController.swift
//  iOS7-HW15-Kholodkov Denis
//
//  Created by Денис Холодков on 13.09.2022.
//

import UIKit

extension SettingsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        modelsCells.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelsCells[section].options.count
    }

    func modelSwitch<T: UITableViewCell>(cell: T,
                                         accessoryType: UITableViewCell.AccessoryType,
                                         _ indexPath: IndexPath,
                                         _ tableView: UITableView) -> T {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(T.self)", for: indexPath) as? T
        else { return UITableViewCell() as? T ?? cell }
        return cell
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = modelsCells[indexPath.section].options[indexPath.row]
        
        switch model.self {
        case .staticCell(let model):
            let cell = modelSwitch(cell: SettingsTableViewCell(), accessoryType: .disclosureIndicator, indexPath, tableView)
            cell.configurate(with: model)
            return cell
        case .switchCell(let model):
            let cell = modelSwitch(cell: SettingsTableViewCellSwitch(), accessoryType: .disclosureIndicator, indexPath, tableView)
            cell.configurate(with: model)
            return cell
        case .rightNoteCell(let model):
            let cell = modelSwitch(cell: SettingsTableViewCellNote(), accessoryType: .disclosureIndicator, indexPath, tableView)
            cell.configurate(with: model)
            return cell
        case .rightNotificationCell(let model):
            let cell = modelSwitch(cell: SettingsTableViewCellNotification(), accessoryType: .disclosureIndicator, indexPath, tableView)
            cell.configurate(with: model)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let type = modelsCells[indexPath.section].options[indexPath.row]
        navigationController?.pushViewController(NextScreenController(), animated: true)
        switch type.self {
        case .staticCell(let model):
            model.handler()
        case .switchCell(let model):
            model.handler()
        case .rightNoteCell(let model):
            model.handler()
        case .rightNotificationCell(let model):
            model.handler()
        }
    }
}

