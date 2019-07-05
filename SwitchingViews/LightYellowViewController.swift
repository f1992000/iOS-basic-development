//
//  LightYellowViewController.swift
//  SwitchingViews
//
//  Created by  DARFON on 2019/6/27.
//  Copyright © 2019  DARFON. All rights reserved.
//

import UIKit

class LightYellowViewController: UIViewController {
    
    @IBAction func backToLightBlue(_ sender: UIButton) {
        // come back for present
        dismiss(animated: true, completion: nil)
        // come back
        //navigationController?.popViewController(animated: true)
    }
    
    
    @IBOutlet weak var showLightBlueText: UILabel!
    var receiveLightBlueValue:String? = "No Input Value"
    override func viewWillAppear(_ animated: Bool) {
        showLightBlueText.text = receiveLightBlueValue
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
