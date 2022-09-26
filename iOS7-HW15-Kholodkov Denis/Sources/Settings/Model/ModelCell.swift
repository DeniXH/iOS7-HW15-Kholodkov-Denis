//
//  ModelCell.swift
//  iOS7-HW15-Kholodkov Denis
//
//  Created by Денис Холодков on 12.09.2022.
//

import UIKit

struct Section {
    let title: String
    let options: [CellType]
}

enum CellType {
    case staticCell(model: BaseCell)
    case switchCell(model: CellSwitchOption)
    case rightNoteCell(model: RightNoteCellOption)
    case rightNotificationCell(model: RightNotificationCell)
}

// MARK: - Filling main Table

extension Section {
    static var models = [(Section(title: "General", options: [
                .switchCell(model: CellSwitchOption(title: "Авиарежим",
                                        icon: UIImage(systemName: "airplane"), iconBackgroundColor: .systemOrange,
                                        handler: {
                                        print("Авиарежим")
                                        }, isOn: false)),
                .rightNoteCell(model: RightNoteCellOption(title: "Wi-Fi",
                                        icon: UIImage(systemName: "wifi"),
                                        iconBackgroundColor: .systemBlue,
                                        handler: {
                                            print("Wi-Fi")
                                        },
                                        rightSideText: "Не подключено")),
                .rightNoteCell(model: RightNoteCellOption(title: "Bluetooth",
                                        icon: UIImage(named: "bluetoothS"),
                                        iconBackgroundColor: .systemBlue,
                                        handler: {
                                        print("Bluetooth")
                                        },
                                        rightSideText: "Вкл.")),
                .staticCell(model: BaseCell(title: "Сотовая связь",
                                       icon: UIImage(systemName: "antenna.radiowaves.left.and.right"),
                                       iconBackgroundColor: .systemGreen) {
                                       print("Сотовая связь")
                                       }),
                .staticCell(model: BaseCell(title: "Режим модема",
                                       icon: UIImage(systemName: "personalhotspot"),
                                       iconBackgroundColor: .systemGreen) {
                                           print("Режим модема")
                                       }),
                .switchCell(model: CellSwitchOption(title: "VPN",
                                       icon: UIImage(named: "vpn"), iconBackgroundColor: .systemBlue,
                                       handler: {
                                            print("VPN")
                                       }, isOn: false)),
            ])), (Section(title: "Information", options: [
                .staticCell(model: BaseCell(title:"Уведомления",
                                        icon: UIImage(systemName: "bell.badge.fill"),
                                        iconBackgroundColor: .systemRed) {
                                            print("Уведомления")
                                        }),
                .staticCell(model: BaseCell(title:"Звуки, тактильные сигналы",
                                       icon: UIImage(systemName: "speaker.wave.3.fill"),
                                       iconBackgroundColor: .systemRed) {
                                           print("Звуки, тактильные сигналы")
                                       }),
                .staticCell(model: BaseCell(title:"Не беспокоить",
                                       icon: UIImage(systemName: "moon"),
                                       iconBackgroundColor: .systemIndigo) {
                                           print("Не беспокоить")
                                       }),
                .staticCell(model: BaseCell(title:"Экранное время",
                                       icon: UIImage(systemName: "hourglass"),
                                       iconBackgroundColor: .systemIndigo) {
                                           print("Экранное время")
                                       })
            ])), (Section(title: "General", options: [
                .rightNotificationCell(model: RightNotificationCell(title: "Основные",
                                        icon: UIImage(systemName: "gear"),
                                        iconBackgroundColor: .systemGray, handler: {
                                        print("Основные")
                                        },
                                        rightIcon: UIImage(systemName: "1.circle.fill"))),
                .staticCell(model: BaseCell(title:"Пункт управления",
                                       icon: UIImage(systemName: "switch.2"),
                                       iconBackgroundColor: .systemGray) {
                                               print("Пункт управления")
                                           }),
                .staticCell(model: BaseCell(title:"Экран и яркость",
                                       icon: UIImage(systemName: "textformat.size"),
                                       iconBackgroundColor: .systemBlue) {
                                           print("Экран и яркость")
                                       }),
                .staticCell(model: BaseCell(title:"Экран «Домой»",
                                       icon: UIImage(systemName: "square.grid.4x3.fill"),
                                       iconBackgroundColor: .systemBlue) {
                                           print("Экран «Домой")
                                       }),
                .staticCell(model: BaseCell(title:"Универсальный доступ",
                                       icon: UIImage(systemName: "figure.wave.circle.fill"),
                                       iconBackgroundColor: .systemBlue) {
                                           print("Универсальный доступ")
                                       })
            ]))

    ]
}

//func configurate (_ models: [Section]) {
//    models.append(Section(title: "General", options: [
//        .switchCell(model: CellSwitchOption(title: "Авиарежим",
//                                icon: UIImage(systemName: "airplane"), iconBackgroundColor: .systemOrange,
//                                handler: {
//                                print("Авиарежим")
//                                }, isOn: false)),
//        .rightNoteCell(model: RightNoteCellOption(title: "Wi-Fi",
//                                icon: UIImage(systemName: "wifi"),
//                                iconBackgroundColor: .systemBlue,
//                                handler: {
//                                    print("Wi-Fi")
//                                },
//                                rightSideText: "Не подключено")),
//        .rightNoteCell(model: RightNoteCellOption(title: "Bluetooth",
//                                icon: UIImage(named: "bluetoothS"),
//                                iconBackgroundColor: .systemBlue,
//                                handler: {
//                                print("Bluetooth")
//                                },
//                                rightSideText: "Вкл.")),
//        .staticCell(model: BaseCell(title: "Сотовая связь",
//                               icon: UIImage(systemName: "antenna.radiowaves.left.and.right"),
//                               iconBackgroundColor: .systemGreen) {
//                               print("Сотовая связь")
//                               }),
//        .staticCell(model: BaseCell(title: "Режим модема",
//                               icon: UIImage(systemName: "personalhotspot"),
//                               iconBackgroundColor: .systemGreen) {
//                                   print("Режим модема")
//                               }),
//        .switchCell(model: CellSwitchOption(title: "VPN",
//                               icon: UIImage(named: "vpn"), iconBackgroundColor: .systemBlue,
//                               handler: {
//                                    print("VPN")
//                               }, isOn: false)),
//    ]))
//
//    models.append(Section(title: "Information", options: [
//        .staticCell(model: BaseCell(title:"Уведомления",
//                                icon: UIImage(systemName: "bell.badge.fill"),
//                                iconBackgroundColor: .systemRed) {
//                                    print("Уведомления")
//                                }),
//        .staticCell(model: BaseCell(title:"Звуки, тактильные сигналы",
//                               icon: UIImage(systemName: "speaker.wave.3.fill"),
//                               iconBackgroundColor: .systemRed) {
//                                   print("Звуки, тактильные сигналы")
//                               }),
//        .staticCell(model: BaseCell(title:"Не беспокоить",
//                               icon: UIImage(systemName: "moon"),
//                               iconBackgroundColor: .systemIndigo) {
//                                   print("Не беспокоить")
//                               }),
//        .staticCell(model: BaseCell(title:"Экранное время",
//                               icon: UIImage(systemName: "hourglass"),
//                               iconBackgroundColor: .systemIndigo) {
//                                   print("Экранное время")
//                               })
//    ]))
//
//    models.append(Section(title: "General", options: [
//        .rightNotificationCell(model: RightNotificationCell(title: "Основные",
//                                icon: UIImage(systemName: "gear"),
//                                iconBackgroundColor: .systemGray, handler: {
//                                print("Основные")
//                                },
//                                rightIcon: UIImage(systemName: "1.circle.fill"))),
//        .staticCell(model: BaseCell(title:"Пункт управления",
//                               icon: UIImage(systemName: "switch.2"),
//                               iconBackgroundColor: .systemGray) {
//                                       print("Пункт управления")
//                                   }),
//        .staticCell(model: BaseCell(title:"Экран и яркость",
//                               icon: UIImage(systemName: "textformat.size"),
//                               iconBackgroundColor: .systemBlue) {
//                                   print("Экран и яркость")
//                               }),
//        .staticCell(model: BaseCell(title:"Экран «Домой»",
//                               icon: UIImage(systemName: "square.grid.4x3.fill"),
//                               iconBackgroundColor: .systemBlue) {
//                                   print("Экран «Домой")
//                               }),
//        .staticCell(model: BaseCell(title:"Универсальный доступ",
//                               icon: UIImage(systemName: "figure.wave.circle.fill"),
//                               iconBackgroundColor: .systemBlue) {
//                                   print("Универсальный доступ")
//                               })
//    ]))
//}
