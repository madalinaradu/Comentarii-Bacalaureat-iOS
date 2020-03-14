//
//  EssayContentVC.swift
//  ComentariiBAC
//
//  Created by Alexandra Radu on 15/03/2020.
//  Copyright © 2020 Radu Alexandra. All rights reserved.
//

import UIKit

class EssayContentVC: UIViewController {
    
    @IBOutlet var titleLbl: UILabel!
    @IBOutlet var authorLbl: UILabel!
    @IBOutlet var descriptionTextView: UITextView!
    
    var selectedOpera:Opera?

//    MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.titleLbl.text = self.selectedOpera?.titlulOperei
        self.authorLbl.text = "de " + (self.selectedOpera?.autorulOperei ?? "necunoscut")
        self.descriptionTextView.text = self.selectedOpera?.textulOperei
    }

}
