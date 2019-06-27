//
//  ViewController.swift
//  SwitchingViews
//
//  Created by  DARFON on 2019/6/25.
//  Copyright © 2019  DARFON. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func goToView2(_ sender: UIButton) {
        let lightRed = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LightRed")
        
        // from bottom to top
        //present(lightRed, animated: true, completion: nil)
        // from right to left
        navigationController?.pushViewController(lightRed, animated: true)
    }
    
    @IBAction func segueGoToView2(_ sender: UIButton) {
        performSegue(withIdentifier: "segueGoToView2", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

