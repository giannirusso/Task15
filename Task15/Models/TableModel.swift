//
//  TableModel.swift
//  Task15
//
//  Created by D K on 14.05.2023.
//

import Foundation

class TableModel {
    
    var numberOfCellsInSection: [Int] = [6,4,2,3]
    lazy var tableSections: [String] = {
        return [" "," "," "]
        
    }()

    var titleArray: [String] = [
        "Авиарежим","Bluetooth","Мобильные данные","Wi-Fi", "Режим Модема", "ВПН"
    ]
    
    func cellType(indexPath: IndexPath) -> String {
        if indexPath.row == 0 {
            return "SwitchCell"
        } else {
            return "CustomCell"
        }
    }
    init() {
    }
    
}
