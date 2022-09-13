//
//  SettingsTableViewCell + notification.swift
//  iOS7-HW15-Kholodkov Denis
//
//  Created by Денис Холодков on 12.09.2022.
//

import UIKit

class SettingsTableViewCellNotification: UITableViewCell, ViewElementProtocol {

    static let identifier = "SettingsTableViewCellNotification"

    // MARK: - Create elements table

    private lazy var iconContainer: UIView = createIconContainer()
    private lazy var iconImageView: UIImageView = createIconImageView()
    private lazy var label: UILabel = createlabel()
    private lazy var rightImageBack: UIView = createRightImageBack()
    private lazy var rightIcon: UIImageView = createRightIcon()

    override func layoutSubviews() {
        super.layoutSubviews()
        createLayout(iconContainer, iconImageView, label)
        createLayoutRightNotification(rightImageBack, rightIcon)
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        iconImageView.image = nil
        label.text = nil
        iconContainer.backgroundColor = nil
        rightIcon.image = nil
    }

    public func configurate(with model: RightNotificationCell) {
        label.text = model.title
        rightIcon.image = model.rightIcon
        iconImageView.image = model.icon
        iconContainer.backgroundColor = model.iconBackgroundColor
    }
}
