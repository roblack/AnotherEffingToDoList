//
//  Checklist.swift
//  Checklists
//
//  Created by Emin Roblack on 10/19/18.
//  Copyright © 2018 Razeware. All rights reserved.
//

import UIKit

class Checklist: NSObject, Codable {
  var name = ""
  var iconName = "Folder"
  var items = [ChecklistItem]()
  
  init(name: String, iconName: String = "Folder") {
    self.name = name
    self.iconName = iconName
    super.init()
  }
  
  func countUncheckedItems() -> Int {
    var count = 0
    for item in items where !item.checked {
      count += 1
    }
    
    return count
    
  }
}

