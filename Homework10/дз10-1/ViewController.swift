//
//  ViewController.swift
//  дз10-1
//
//  Created by Nadya Belozerova on 29.11.2020.
//

import UIKit

struct Setting {
    let name: String
    let icon: UIImage?
    let label: String
    let isSwitchHidden: Bool
    let accessoryType1: UITableViewCell.AccessoryType
    
    init(name: String, icon: UIImage?, label: String = "", isSwitchHidden: Bool = true, accessoryType1: UITableViewCell.AccessoryType = .disclosureIndicator) {
        self.name = name
        self.icon = icon
        self.label = label
        self.isSwitchHidden = isSwitchHidden
        self.accessoryType1 = accessoryType1
        }
 
}

class ViewController: UIViewController {
    
    var settings: [[Setting]] = [[Setting(name: "Авиарежим", icon: #imageLiteral(resourceName: "planemode"),  isSwitchHidden: false, accessoryType1: .none),
        Setting(name: "Wi-Fi", icon: #imageLiteral(resourceName: "wifi"), label: "Anvics-YOTA"),
        Setting(name: "Bluetooth", icon: #imageLiteral(resourceName: "bluetooth"), label: "Вкл."),
        Setting(name: "Сотовая связь", icon: #imageLiteral(resourceName: "mobilenet")),
        Setting(name: "Режим модема", icon: #imageLiteral(resourceName: "modemmode")),],
        [Setting(name: "Уведомления", icon: #imageLiteral(resourceName: "notes")),
        Setting(name: "Звуки, тактильные сигналы", icon: #imageLiteral(resourceName: "sounds")),
        Setting(name: "Не беспокоить", icon: #imageLiteral(resourceName: "dontdist")),
        Setting(name: "Экранное время", icon: #imageLiteral(resourceName: "screentime")),],
       [Setting(name: "Основные", icon: #imageLiteral(resourceName: "main")),
        Setting(name: "Пункт управления", icon: #imageLiteral(resourceName: "commandcenter")),
        Setting(name: "Экран и яркость", icon: #imageLiteral(resourceName: "screen"))]
    ]
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return settings.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settings[section].count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let setName = settings[indexPath.section][indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! SettingsTableViewCell
        
        cell.nameOfSetting.text = setName.name
        cell.labelOfSettings.text = setName.label
        cell.iconOfSetting.image = setName.icon
        cell.switch1.isHidden = setName.isSwitchHidden
        cell.accessoryType = setName.accessoryType1
   
        
        return cell
    }
}
