//
//  Color.swift
//  Color Picker
//
//  Created by Teodor Ivanov on 11/14/17.
//  Copyright © 2017 Teodor Ivanov. All rights reserved.
//

import Foundation
import UIKit

struct Color {
    var name: String?
    var color: UIColor?
    
    init(color: UIColor, name: String){
        self.color = color
        self.name = name
    }
    
}
