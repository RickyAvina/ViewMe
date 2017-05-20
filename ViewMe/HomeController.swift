//
//  HomeController.swift
//  ViewMe
//
//  Created by Ricky Avina on 5/12/17.
//  Copyright © 2017 InternTeam. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class HomeController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "settings"), style: .plain, target: self, action: #selector(handleSettings))
        navigationItem.rightBarButtonItem?.tintColor = UIColor.black
        
        navigationItem.title = "Home"
    }
    
    func handleSettings(){
        let settingsController = SettingsController()
        
        let navController = UINavigationController(rootViewController: settingsController)
        present(navController, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "YEET"
        cell.backgroundColor = UIColor.red
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    //    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
    //
    //    }
}
