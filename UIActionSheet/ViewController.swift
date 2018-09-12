//
//  ViewController.swift
//  UIActionSheet
//
//  Created by ramjan sayyad on 13/08/18.
//  Copyright © 2018 ramjan sayyad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var actionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func actionSheet(_ sender: Any)
    {
        let actionSheetview = UIAlertController(title: "Action Sheet", message: "This is Action Sheet", preferredStyle: .actionSheet)
        let action1 = UIAlertAction(title: "Action 1", style: .default, handler: {
            (alert:UIAlertAction) -> Void in
            
            self.actionLabel.text = "Action 1 was Triggered"
        })
        
        let  action2  = UIAlertAction(title: "Action 2", style: .default, handler: {
            (alert:UIAlertAction) -> Void in
            
            self.actionLabel.text = "Action 2 was Triggered"
        })
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: {
         (alert:UIAlertAction) -> Void in
        })
        
        
        
        actionSheetview.addAction(action1)
        actionSheetview.addAction(action2)
        actionSheetview.addAction(cancel)
        
         present(actionSheetview,animated: true,completion: nil)
       
    }
}

