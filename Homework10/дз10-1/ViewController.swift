//
//  ViewController.swift
//  дз10-1
//
//  Created by Nadya Belozerova on 29.11.2020.
//

import UIKit

struct Settings {
    var settings1: [String] = []
    
    var icon = [UIImage]()
    
    var label: [String] = []
}

class SettingsClass {
    static func sect() -> [Settings] {
        return [
            
            Settings(settings1: ["Авиарежим", "Wi-Fi", "Bluetooth", "Сотовая связь", "Режим модема"], icon: [#imageLiteral(resourceName: "planemode"), #imageLiteral(resourceName: "wifi"), #imageLiteral(resourceName: "bluetooth"), #imageLiteral(resourceName: "mobilenet"), #imageLiteral(resourceName: "modemmode")], label: ["", "Anvics-YOTA", "Вкл.", "", ""]),
            Settings(settings1: ["Уведомления", "Звуки, тактильные сигналы", "Не беспокоить", "Экранное время"], icon: [#imageLiteral(resourceName: "notes"), #imageLiteral(resourceName: "sounds"), #imageLiteral(resourceName: "dontdist"), #imageLiteral(resourceName: "screentime")], label: ["", "", "", ""]),
            Settings(settings1: ["Основные", "Пункт управления", "Экран и яркость"], icon: [#imageLiteral(resourceName: "main"), #imageLiteral(resourceName: "commandcenter"), #imageLiteral(resourceName: "screen")], label: ["", "", ""]),
        ]
    }
}

class ViewController: UIViewController {
    
    var settings2 = SettingsClass.sect()
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        settings2.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settings2[section].settings1.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let setName = settings2[indexPath.section].settings1[indexPath.row]
        let setName2 = settings2[indexPath.section].icon[indexPath.row]
        let setName3 = settings2[indexPath.section].label[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! SettingsTableViewCell
        
        cell.nameOfSetting.text = setName
        cell.labelOfSettings.text = setName3
        cell.iconOfSetting.image = setName2
        
        if indexPath.section == 0 && indexPath.row == 0 {
            cell.accessoryType = .none
         
         } else {
            cell.accessoryType = .disclosureIndicator
            cell.planeModeSwitch.isHidden = true
         }
        return cell
        
    }
    
}
