//
//  EssayListVC.swift
//  ComentariiBAC
//
//  Created by Alexandra Radu on 14/03/2020.
//  Copyright © 2020 Radu Alexandra. All rights reserved.
//

import UIKit

class EssayListVC: UIViewController {
    
    var selectedProfileType = ""
    var selectedEssayType = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        print("Selected Profile Type: \(selectedProfileType)")
        print("Selected Essay Type: \(selectedEssayType)")

    }
}
