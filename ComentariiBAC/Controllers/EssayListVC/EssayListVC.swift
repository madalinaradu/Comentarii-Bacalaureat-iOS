//
//  EssayListVC.swift
//  ComentariiBAC
//
//  Created by Alexandra Radu on 14/03/2020.
//  Copyright © 2020 Radu Alexandra. All rights reserved.
//

import UIKit

class EssayListVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var essayTableView: UITableView!
    
    var selectedProfileType = ""
    var selectedEssayType = ""
    let segueIdentifier = "goToEssayContent"
    var selectedOpera:Opera?
    
    //    MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Selected Profile Type: \(selectedProfileType)")
        print("Selected Essay Type: \(selectedEssayType)")
        
        self.essayTableView.delegate = self
        self.essayTableView.dataSource = self
        let nib = UINib(nibName: "EssayCell", bundle: nil)
        self.essayTableView.register(nib, forCellReuseIdentifier: "EssayCell")
        
    }
    
    //    MARK: - VC Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as? EssayContentVC
        destinationVC?.selectedOpera = self.selectedOpera
    }
    
    //    MARK: - Delegate methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Database.opere.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EssayCell", for: indexPath) as! EssayCell
        cell.titluOpera.text = Database.opere[indexPath.row].titlulOperei
        cell.autorOpera.text = Database.opere[indexPath.row].autorulOperei
        cell.genOpera.text = Database.opere[indexPath.row].genulOperei
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedOpera = Database.opere[indexPath.row]
        performSegue(withIdentifier: segueIdentifier, sender: self)
    }
}
