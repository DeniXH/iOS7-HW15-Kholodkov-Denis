//
//  SettingsTableViewCell + note.swift
//  iOS7-HW15-Kholodkov Denis
//
//  Created by Денис Холодков on 12.09.2022.
//

import UIKit

class SettingsTableViewCellNote: BaseCellUIElements {

    static let identifier = "SettingsTableViewCellNote"

    // MARK: - Create elements table

    private lazy var iconContainer: UIView = createIconContainer()
    private lazy var iconImageView: UIImageView = createIconImageView()
    private lazy var label: UILabel = createlabel()
    private lazy var rightLabel: UILabel = createRightLabel()

    override func layoutSubviews() {
        super.layoutSubviews()
        createLayout(iconContainer, iconImageView, label)
        createLayoutRightLabel(rightLabel, iconContainer)
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        iconImageView.image = nil
        label.text = nil
        iconContainer.backgroundColor = nil
        rightLabel.text = nil
    }

    public func configurate(with model: RightNoteCellOption) {
        label.text = model.title
        rightLabel.text = model.rightSideText
        iconImageView.image = model.icon
        iconContainer.backgroundColor = model.iconBackgroundColor
    }
}
