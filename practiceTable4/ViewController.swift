//
//  ViewController.swift
//  practiceTable4
//
//  Created by RYAN CHRISTENSEN on 12/10/14.
//  Copyright (c) 2014 RYAN CHRISTENSEN. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var batBag = [Stuff]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var newEquipment = Stuff(baseball: "Rawlings", glove: "Rawlings", bat: "Louisville Slugger")
        
        self.batBag = [newEquipment]
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.tableView.reloadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CELL", forIndexPath: indexPath) as StuffTableViewCell
        
        var gearToDisplay = self.batBag[indexPath.row]
        cell.nameLabel.text = gearToDisplay.baseball
        cell.nameLabel.text = gearToDisplay.bat
        cell.nameLabel.text = gearToDisplay.glove
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.batBag.count
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SHOW_STUFF" {
            let secondVC = segue.destinationViewController as SecondViewController
            let selectedIndexPath = self.tableView.indexPathForSelectedRow()
            
            secondVC.selectedGear = self.batBag[selectedIndexPath!.row]
            
        }
    }


}

