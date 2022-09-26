//
//  SettingsTableViewCell + switch.swift
//  iOS7-HW15-Kholodkov Denis
//
//  Created by Денис Холодков on 12.09.2022.
//
import UIKit

class SettingsTableViewCellSwitch: BaseCellUIElements {

    static let identifier = "SettingsTableViewCellSwitch"

    // MARK: - Create elements table

    private lazy var iconContainer: UIView = createIconContainer()
    private lazy var iconImageView: UIImageView = createIconImageView()
    private lazy var label: UILabel = createlabel()
    private lazy var componentSwitch: UISwitch = createComponentSwitch()

    override func layoutSubviews() {
        super.layoutSubviews()
        createLayout(iconContainer, iconImageView, label)
        createLayoutSwitch(componentSwitch)
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        iconImageView.image = nil
        label.text = nil
        iconContainer.backgroundColor = nil
        componentSwitch.isOn = false
    }

    public func configurate(with model: CellSwitchOption) {
        label.text = model.title
        iconImageView.image = model.icon
        iconContainer.backgroundColor = model.iconBackgroundColor
        componentSwitch.isOn = model.isOn
    }
}
