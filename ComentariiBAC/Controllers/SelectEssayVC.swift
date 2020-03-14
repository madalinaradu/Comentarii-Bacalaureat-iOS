//
//  SelectEssayVC.swift
//  ComentariiBAC
//
//  Created by Alexandra Radu on 14/03/2020.
//  Copyright © 2020 Radu Alexandra. All rights reserved.
//

import UIKit

class SelectEssayVC: UIViewController {
    

    @IBOutlet var backgroundView: UIView!
    @IBOutlet var comNaratiuneaBtn: UIButton!
    @IBOutlet var comPoeziiBtn: UIButton!
    
    var selectedProfileType = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupScreen()
        print("Selected profile type: \(selectedProfileType)")
    }
    
    func setupScreen() {
        self.backgroundView.setGradiendBackground(colorOne: Colors.lightGrey, colorTwo: Colors.white)
        self.comNaratiuneaBtn.setGradiendBackground(colorOne: Colors.red, colorTwo: Colors.white)
        self.comPoeziiBtn.setGradiendBackground(colorOne: Colors.white, colorTwo: Colors.red)
        self.comNaratiuneaBtn.layer.cornerRadius = 20
        self.comNaratiuneaBtn.clipsToBounds = true
        self.comPoeziiBtn.layer.cornerRadius = 20
        self.comPoeziiBtn.clipsToBounds = true
    }
    
}
