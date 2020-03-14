//
//  Opera.swift
//  ComentariiBAC
//
//  Created by Alexandra Radu on 14/03/2020.
//  Copyright © 2020 Radu Alexandra. All rights reserved.
//

import Foundation

struct Opera {
    let titlulOperei:String
    let autorulOperei:String
    let genulOperei:String
    let textulOperei:String
    
    init(titlulOperei:String, autorulOperei:String, genulOperei:String, textulOperei:String) {
        self.titlulOperei = titlulOperei
        self.autorulOperei = autorulOperei
        self.genulOperei = genulOperei
        self.textulOperei = textulOperei
    }
}
