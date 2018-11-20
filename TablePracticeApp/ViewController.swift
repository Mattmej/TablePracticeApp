//
//  ViewController.swift
//  TablePracticeApp
//
//  Created by Matt Mejia on 11/20/18.
//  Copyright © 2018 Matt_Mejia. All rights reserved.
//

import UIKit

//var nameArray: [String] = ["Eric Strauss", "John Boatman", "Haley Ericsson", "Amelie Bosch", "Kevin Allman", "Gordon Yu"]
//
//var detailDictionary: [String:String] = [:]
//
//for name in nameArray {
//    detailDictionary[name] =
//}

struct userDetails {
    let name: String
    let number: String
}

let users = [userDetails(name: "Eric Strauss", number: "202-555-0116"),
                userDetails(name: "John Boatman", number: "202-555-0180"),
                userDetails(name: "Haley Ericsson", number: "202-555-0159"),
                userDetails(name: "Amelie Bosch", number: "202-555-0165"),
                userDetails(name: "Kevin Allman", number: "202-555-0145"),
                userDetails(name: "Gordon Yu", number: "202-555-0185")]

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    
    // Number of sections in table
    // Index starts at 0
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // Number of rows in section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    // Code for each cell in the table
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else { return UITableViewCell() }
        
//            cell.textLabel?.text = "SECTION: \(indexPath.section) ROW: \(indexPath.row)"
//
        cell.textLabel?.text = "NAME: \(users[indexPath.row].name) NUMBER: \(users[indexPath.row].number)"
            return cell
    }
}

