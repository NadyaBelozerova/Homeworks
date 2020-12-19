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
 
}

class ViewController: UIViewController {
    
    var settings = [
        Setting(name: "Авиарежим", icon: #imageLiteral(resourceName: "planemode"), label: "", isSwitchHidden: false, accessoryType1: .none),
        Setting(name: "Wi-Fi", icon: #imageLiteral(resourceName: "wifi"), label: "Anvics-YOTA", isSwitchHidden: true, accessoryType1: .disclosureIndicator),
        Setting(name: "Bluetooth", icon: #imageLiteral(resourceName: "bluetooth"), label: "Вкл.", isSwitchHidden: true, accessoryType1: .disclosureIndicator),
        Setting(name: "Сотовая связь", icon: #imageLiteral(resourceName: "mobilenet"), label: "", isSwitchHidden: true, accessoryType1: .disclosureIndicator),
        Setting(name: "Режим модема", icon: #imageLiteral(resourceName: "modemmode"), label: "", isSwitchHidden: true, accessoryType1: .disclosureIndicator),
        Setting(name: "", icon: nil, label: "", isSwitchHidden: true, accessoryType1: .none),
        Setting(name: "Уведомления", icon: #imageLiteral(resourceName: "notes"), label: "", isSwitchHidden: true, accessoryType1: .disclosureIndicator),
        Setting(name: "Звуки, тактильные сигналы", icon: #imageLiteral(resourceName: "sounds"), label: "", isSwitchHidden: true, accessoryType1: .disclosureIndicator),
        Setting(name: "Не беспокоить", icon: #imageLiteral(resourceName: "dontdist"), label: "", isSwitchHidden: true, accessoryType1: .disclosureIndicator),
        Setting(name: "Экранное время", icon: #imageLiteral(resourceName: "screentime"), label: "", isSwitchHidden: true, accessoryType1: .disclosureIndicator),
        Setting(name: "", icon: nil, label: "", isSwitchHidden: true, accessoryType1: .none),
        Setting(name: "Основные", icon: #imageLiteral(resourceName: "main"), label: "", isSwitchHidden: true, accessoryType1: .disclosureIndicator),
        Setting(name: "Пункт управления", icon: #imageLiteral(resourceName: "commandcenter"), label: "", isSwitchHidden: true, accessoryType1: .disclosureIndicator),
        Setting(name: "Экран и яркость", icon: #imageLiteral(resourceName: "screen"), label: "", isSwitchHidden: true, accessoryType1: .disclosureIndicator)
    ]
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settings.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let setName = settings[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! SettingsTableViewCell
        
        cell.nameOfSetting.text = setName.name
        cell.labelOfSettings.text = setName.label
        cell.iconOfSetting.image = setName.icon
        cell.switch1.isHidden = setName.isSwitchHidden
        cell.accessoryType = setName.accessoryType1
   
        if setName.icon == nil {
            cell.backgroundColor = #colorLiteral(red: 0.9492684007, green: 0.9486895204, blue: 0.9704379439, alpha: 1)
        } else {
            cell.backgroundColor = #colorLiteral(red: 0.999904573, green: 1, blue: 0.9998808503, alpha: 1)
        }
        
        return cell
    }
}
