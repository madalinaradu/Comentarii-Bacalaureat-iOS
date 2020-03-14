//
//  PrincipalViewController.swift
//  ComentariiBAC
//
//  Created by Alexandra Radu on 14/03/2020.
//  Copyright © 2020 Radu Alexandra. All rights reserved.
//

import UIKit

class PrincipalViewController: UIViewController {
    @IBOutlet var principalBackground: UIView!
    @IBOutlet var profilUmanBtn: UIButton!
    @IBOutlet var profilRealBtn: UIButton!
    
    let segueIdentifier = "goToEssayTypePage"
    var selectedProfileType = ""
    
    //MARK:- Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupScreen()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
        super.viewWillDisappear(animated)
    }
    
    //MARK:- Actions
    
    @IBAction func profilUmanBtnPressed(_ sender: Any) {
        self.selectedProfileType = "uman"
        performSegue(withIdentifier: segueIdentifier, sender: self)
    }
    
    
    @IBAction func profilRealBtnPressed(_ sender: Any) {
        self.selectedProfileType = "real"
        performSegue(withIdentifier: segueIdentifier, sender: self)
    }
    
    
    //MARK:- Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Create a new variable to store the instance of PlayerTableViewController
        let destinationVC = segue.destination as? SelectEssayVC
        destinationVC?.selectedProfileType = self.selectedProfileType
    }
    
    
    func setupScreen() {
        self.principalBackground.setGradiendBackground(colorOne: Colors.red, colorTwo: Colors.lightGrey)
        self.profilRealBtn.setGradiendBackground(colorOne: Colors.lightGrey, colorTwo: Colors.white)
        self.profilUmanBtn.setGradiendBackground(colorOne: Colors.white, colorTwo: Colors.lightGrey)
        self.profilUmanBtn.layer.cornerRadius = 20
        self.profilUmanBtn.clipsToBounds = true
        self.profilRealBtn.layer.cornerRadius = 20
        self.profilRealBtn.clipsToBounds = true
    }
    
    
    
}
