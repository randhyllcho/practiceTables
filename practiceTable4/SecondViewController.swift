//
//  SecondViewController.swift
//  practiceTable4
//
//  Created by RYAN CHRISTENSEN on 12/10/14.
//  Copyright (c) 2014 RYAN CHRISTENSEN. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var batTextField: UITextField!
    
    @IBOutlet weak var gloveTextField: UITextField!
    
    var selectedGear : Stuff?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.batTextField.text = selectedGear?.bat
        self.gloveTextField.text = selectedGear?.glove
        self.textField.text = selectedGear?.baseball

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        selectedGear?.baseball = self.textField.text
        selectedGear?.bat = self.textField.text
        selectedGear?.glove = self.textField.text
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
   
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
