//
//  ProfilUmanViewController.swift
//  ComentariiBAC
//
//  Created by Alexandra Radu on 14/03/2020.
//  Copyright © 2020 Radu Alexandra. All rights reserved.
//

import UIKit

class ProfilUmanViewController: UIViewController {
    
    @IBOutlet var profilUmanBackground: UIView!
    @IBOutlet var ComNaratiuneBtn: UIButton!
    @IBOutlet var ComPoezieBtn: UIButton!
   


    var comentariiNaratiune: String?
    var comentariiPoezie: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.profilUmanBackground.setGradiendBackground(colorOne: Colors.lightGrey, colorTwo: Colors.white)
        self.ComNaratiuneBtn.setGradiendBackground(colorOne: Colors.red, colorTwo: Colors.white)
        self.ComPoezieBtn.setGradiendBackground(colorOne: Colors.white, colorTwo: Colors.red)
        self.ComNaratiuneBtn.layer.cornerRadius = 20
        self.ComNaratiuneBtn.clipsToBounds = true
        self.ComPoezieBtn.layer.cornerRadius = 20
        self.ComPoezieBtn.clipsToBounds = true
    }
    
    //MARK:- Methods

    

   

}
