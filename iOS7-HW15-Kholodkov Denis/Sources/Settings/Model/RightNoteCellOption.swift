//
//  RightNoteCellOption.swift
//  iOS7-HW15-Kholodkov Denis
//
//  Created by Денис Холодков on 26.09.2022.
//

import UIKit

struct RightNoteCellOption {
    var title: String
    var icon: UIImage?
    let iconBackgroundColor: UIColor
    let handler: (() -> Void)
    var rightSideText: String
}
