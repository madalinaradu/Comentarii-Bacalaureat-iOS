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
    var selectedEssayType = ""
    let segueIdentifier = "goToEssaySelectionVC"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupScreen()
        print("Selected profile type: \(selectedProfileType)")
    }
    
    //    MARK: - IBActions
    @IBAction func comNaratiuniBtnPressed(_ sender: Any) {
        selectedEssayType = "naratiuni"
        performSegue(withIdentifier: segueIdentifier, sender: self)
    }
    
    @IBAction func comPoeziiBtnPressed(_ sender: Any) {
        selectedEssayType = "poezii"
        performSegue(withIdentifier: segueIdentifier, sender: self)
        
    }
    //    MARK: - VC Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Create a new variable to store the instance of PlayerTableViewController
        let destinationVC = segue.destination as? EssayListVC
        destinationVC?.selectedProfileType = self.selectedProfileType
        destinationVC?.selectedEssayType = self.selectedEssayType
        
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
