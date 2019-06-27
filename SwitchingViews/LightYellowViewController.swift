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
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}
