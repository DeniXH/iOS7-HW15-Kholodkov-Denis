//
//  SettingsViewController.swift
//  iOS7-HW15-Kholodkov Denis
//
//  Created by Денис Холодков on 11.09.2022.
//

import UIKit

class SettingsViewController: UIViewController {
    
    // MARK: - Properties
    
    var settingsView: SettingsView?
    var models = [Section]()
    
    override func loadView() {
        view = settingsView
    }
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Настройки"
        configurate(&models)
        settingsView?.configureView(delegate: self, dataSource: self)
    }
}
