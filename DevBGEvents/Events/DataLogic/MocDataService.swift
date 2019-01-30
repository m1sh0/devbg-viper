//
//  MocDataService.swift
//  DevBGEvents
//
//  Created by Mihail Karev on 30/01/2019.
//  Copyright © 2019 DevBG. All rights reserved.
//

import UIKit

protocol DataService {
    func loadData() -> [[String: String]]
}

class MocDataService: NSObject, DataService {
    func loadData() -> [[String: String]] {
        return [["name": "Viper in SWIFT"], ["name": "Kotlin with MVVM"], ["name": "Kotlin vs Swift"]]
    }
}
