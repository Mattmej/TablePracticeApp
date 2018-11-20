//
//  ViewController.swift
//  TablePracticeApp
//
//  Created by Matt Mejia on 11/20/18.
//  Copyright © 2018 Matt_Mejia. All rights reserved.
//

import UIKit

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
        return 2
    }
    
    // Number of rows in section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    // Code for the table itself
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else { return UITableViewCell() }
        
            cell.textLabel?.text = "SECTION: \(indexPath.section) ROW: \(indexPath.row)"
        
            return cell
    }
}

