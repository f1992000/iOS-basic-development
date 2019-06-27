//
//  LightGreenViewController.swift
//  SwitchingViews
//
//  Created by  DARFON on 2019/6/25.
//  Copyright © 2019  DARFON. All rights reserved.
//

import UIKit

class LightGreenViewController: UIViewController {

    @IBAction func backToView2(_ sender: UIButton) {
        // come back for present
        //dismiss(animated: true, completion: nil)
        
        // come back
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func backToRoot(_ sender: UIButton) {
        // come back root
        navigationController?.popToRootViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
