//
//  SettingsTableViewCell.swift
//  iOS7-HW15-Kholodkov Denis
//
//  Created by Денис Холодков on 11.09.2022.
//

import UIKit

class SettingsTableViewCell: UITableViewCell, ViewElementProtocol {

    static let identifier = "SettingsTableViewCell"

    // MARK: - Create elements table

    private lazy var iconContainer: UIView = createIconContainer()
    private lazy var iconImageView: UIImageView = createIconImageView()
    private lazy var label: UILabel = createlabel()


    override func layoutSubviews() {
        super.layoutSubviews()
        createLayout(iconContainer, iconImageView, label)
        accessoryType = .disclosureIndicator
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        iconImageView.image = nil
        label.text = nil
        iconContainer.backgroundColor = nil
    }

    public func configurate(with model: Cell) {
        label.text = model.title
        iconImageView.image = model.icon
        iconContainer.backgroundColor = model.iconBackgroundColor
    }
}
