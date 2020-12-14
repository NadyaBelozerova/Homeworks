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
    let switchButton = UISwitch(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
}

class ViewController: UIViewController {
    
    var settings = [
        Setting(name: "Авиарежим", icon: #imageLiteral(resourceName: "planemode"), label: ""),
        Setting(name: "Wi-Fi", icon: #imageLiteral(resourceName: "wifi"), label: "Anvics-YOTA"), Setting(name: "Bluetooth", icon: #imageLiteral(resourceName: "bluetooth"), label: "Вкл."), Setting(name: "Сотовая связь", icon: #imageLiteral(resourceName: "mobilenet"), label: ""), Setting(name: "Режим модема", icon: #imageLiteral(resourceName: "modemmode"), label: ""), Setting(name: "", icon: nil, label: ""), Setting(name: "Уведомления", icon: #imageLiteral(resourceName: "notes"), label: ""), Setting(name: "Звуки, тактильные сигналы", icon: #imageLiteral(resourceName: "sounds"), label: ""), Setting(name: "Не беспокоить", icon: #imageLiteral(resourceName: "dontdist"), label: ""), Setting(name: "Экранное время", icon: #imageLiteral(resourceName: "screentime"), label: ""), Setting(name: "", icon: nil, label: ""), Setting(name: "Основные", icon: #imageLiteral(resourceName: "main"), label: ""), Setting(name: "Пункт управления", icon: #imageLiteral(resourceName: "commandcenter"), label: ""), Setting(name: "Экран и яркость", icon: #imageLiteral(resourceName: "screen"), label: "")
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
        cell.addSubview(setName.switchButton)
        
        setName.switchButton.translatesAutoresizingMaskIntoConstraints = false
        let margins = cell.layoutMarginsGuide
        setName.switchButton.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: 0).isActive = true
        
        setName.switchButton.centerYAnchor.constraint(equalTo: margins.centerYAnchor, constant: 0).isActive = true
        
        if indexPath.row == 0 {
            cell.accessoryType = .none
        } else if indexPath.row == 5 || indexPath.row == 10 {
            cell.accessoryType = .none
            setName.switchButton.isHidden = true
            cell.backgroundColor = #colorLiteral(red: 0.9492684007, green: 0.9486895204, blue: 0.9704379439, alpha: 1)
        } else {
            setName.switchButton.isHidden = true
        }
        return cell
    }
}
