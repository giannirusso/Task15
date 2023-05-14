//
//  CellModel.swift
//  Task15
//
//  Created by Kirill Khudiakov on 08.05.2023.
//  Copyright © 2023 tuist.io. All rights reserved.
//

import UIKit



struct DownloadCellModel {
    
    let fileName: String
    var isLoading: Bool  = false
    var size: String = ""
    var immediatelyDownload: Bool = false
    var error: Error?
}

extension DownloadCellModel {
    
    func copy() -> Self {
        .init(fileName: fileName, isLoading: isLoading)
    }
    
}
