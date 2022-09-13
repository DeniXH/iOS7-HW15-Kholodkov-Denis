//
//  ViewElementProtocol.swift
//  iOS7-HW15-Kholodkov Denis
//
//  Created by Денис Холодков on 11.09.2022.
//

import Foundation
import UIKit

protocol ViewElementProtocol: UITableViewCell {

    func createIconContainer() -> UIView
    func createIconImageView() -> UIImageView
    func createlabel() -> UILabel // стандартная ячейка закончилась
    func createComponentSwitch() -> UISwitch
    func createRightLabel() -> UILabel
    func createRightImageBack() -> UIView
    func createRightIcon() -> UIImageView
    func createLayout(_ iconContainer: UIView,
                      _ iconImageView: UIImageView,
                      _ label: UILabel)
    func createLayoutSwitch(_ componentSwitch: UISwitch)
    func createLayoutRightLabel(_ rightLabel: UILabel,
                                _ iconContainer: UIView)
    func createLayoutRightNotification(_ rightImageBack: UIView,
                                       _ rightIcon: UIImageView)

    
}

extension ViewElementProtocol {

    func createIconContainer() -> UIView {
        let view = UIView()
        view.clipsToBounds = true
        view.layer.cornerRadius = 8
        view.layer.masksToBounds = true
        return view
    }

    func createIconImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
        return imageView
    }

    func createlabel() -> UILabel {
        let label = UILabel()
        label.numberOfLines = 1
        return label
    }

    func createComponentSwitch() -> UISwitch {
        let componentSwitch = UISwitch()
        componentSwitch.onTintColor = .systemGreen
        return componentSwitch
    }

    func createRightLabel() -> UILabel {
        let rightLabel = UILabel()
        rightLabel.numberOfLines = 1
        rightLabel.font = .systemFont(ofSize: 15)
        rightLabel.textColor = .lightGray
        rightLabel.textAlignment = .right
        return rightLabel
    }

    func createRightImageBack() -> UIView {
        let rightImageBack = UIView()
        rightImageBack.clipsToBounds = true
        rightImageBack.layer.cornerRadius = 20
        rightImageBack.layer.masksToBounds = true
        return rightImageBack
    }

    func createRightIcon() -> UIImageView {
        let imageView = UIImageView()
        imageView.tintColor = .red
        imageView.contentMode = .scaleAspectFit
        return imageView
    }

// MARK: - Layout
    func createLayout(_ iconContainer: UIView,
                      _ iconImageView: UIImageView,
                      _ label: UILabel) {
        contentView.addSubview(label)
        contentView.addSubview(iconContainer)
        iconContainer.addSubview(iconImageView)
        let size: CGFloat = contentView.frame.size.height - 12
        iconContainer.frame = CGRect(x: 15, y: 6, width: size, height: size)

        let imageSize: CGFloat = size/1.5
        iconImageView.frame = CGRect(x: (size-imageSize)/2, y: (size-imageSize)/2, width: imageSize, height: imageSize)
        label.frame = CGRect(x: 25 + iconContainer.frame.size.width,
                             y: 0,
                             width: contentView.frame.size.width-20-iconContainer.frame.size.width,
                             height: contentView.frame.size.height)
    }

    func createLayoutSwitch(_ componentSwitch: UISwitch) {
        componentSwitch.sizeToFit()
        addSubview(componentSwitch)
        componentSwitch.frame = CGRect(x: contentView.frame.size.width - componentSwitch.frame.size.width - 20,
                                       y: (contentView.frame.size.height - componentSwitch.frame.size.height)/2,
                                       width: componentSwitch.frame.size.width,
                                       height: componentSwitch.frame.size.height)
    }

    func createLayoutRightLabel(_ rightLabel: UILabel,
                                _ iconContainer: UIView) {
        contentView.addSubview(rightLabel)
        accessoryType = .disclosureIndicator
        rightLabel.frame = CGRect(x: -4 + iconContainer.frame.size.width,
                                  y: 0,
                                  width: contentView.frame.size.width-5-iconContainer.frame.size.width,
                                  height: contentView.frame.size.height)
    }

    func createLayoutRightNotification(_ rightImageBack: UIView,
                                       _ rightIcon: UIImageView) {
        contentView.addSubview(rightImageBack)
        rightImageBack.addSubview(rightIcon)
        accessoryType = .disclosureIndicator
        let size: CGFloat = contentView.frame.size.height - 12
        let imageSize: CGFloat = size/1.5

        rightImageBack.frame = CGRect(x: 322, y: 0, width: size, height: size)
        rightIcon.frame = CGRect(x: (size-imageSize)/2, y: (size-imageSize), width: imageSize, height: imageSize)
    }
}
