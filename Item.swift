//
//  item.swift
//  FinalProject1
//
//  Created by Syrup on 3/24/22.
//

import UIKit

class item: NSObject {
    var name: String
    var desc: String
    var imageFile: String
    init(name: String, desc: String, imageFile: String) {
        self.name = name
        self.desc = desc
        self.imageFile = imageFile
    }
}
