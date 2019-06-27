//
//  LightRedViewController.swift
//  SwitchingViews
//
//  Created by  DARFON on 2019/6/25.
//  Copyright © 2019  DARFON. All rights reserved.
//

import UIKit

class LightRedViewController: UIViewController {

    @IBAction func goToView3(_ sender: UIButton) {
        let lightGreen = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LightGreen")
        
        //from right to left
        navigationController?.pushViewController(lightGreen, animated: true)
        // from bottom to top
        //present(lightGreen, animated: true, completion: nil)

    }
    
    @IBAction func segueGoToView3(_ sender: UIButton) {
        performSegue(withIdentifier: "segueGoToView3", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
