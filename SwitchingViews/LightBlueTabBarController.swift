//
//  LightBlueTabBarController.swift
//  SwitchingViews
//
//  Created by  DARFON on 2019/6/28.
//  Copyright © 2019  DARFON. All rights reserved.
//

import UIKit

class LightBlueTabBarController: UIViewController {

    @IBAction func backToLightRed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
