//
//  SettinsView.swift
//  iOS7-HW15-Kholodkov Denis
//
//  Created by Денис Холодков on 11.09.2022.
//

import Foundation
import UIKit

class SettingsView: UIView {

    // MARK: - Properties

    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(SettingsTableViewCell.self, forCellReuseIdentifier: "SettingsTableViewCell")
        tableView.register(SettingsTableViewCellSwitch.self, forCellReuseIdentifier: "SettingsTableViewCellSwitch")
        tableView.register(SettingsTableViewCellNote.self, forCellReuseIdentifier: "SettingsTableViewCellNote")
        tableView.register(SettingsTableViewCellNotification.self, forCellReuseIdentifier: "SettingsTableViewCellNotification")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    // MARK: - Initial

    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setup

    private func setupView() {
        addSubview(tableView)

        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: self.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }

    func configureView(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        tableView.delegate = delegate
        tableView.dataSource = dataSource
    }
}
