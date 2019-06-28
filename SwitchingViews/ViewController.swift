//
//  ViewController.swift
//  SwitchingViews
//
//  Created by  DARFON on 2019/6/25.
//  Copyright © 2019  DARFON. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func goToLightYellow(_ sender: UIButton) {
        let lightYellow = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LightYellow")
        
        // from bottom to top
        present(lightYellow, animated: true, completion: nil)
        // from right to left
        //navigationController?.pushViewController(lightYellow, animated: true)
    }
    
    
    @IBAction func goToLightRed(_ sender: UIButton) {
        let lightRed = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LightRed")
        
        // from bottom to top
        //present(lightRed, animated: true, completion: nil)
        // from right to left
        navigationController?.pushViewController(lightRed, animated: true)
    }
    
    
    //@IBOutlet weak var textInputToLightYellow: UITextField!
    
    @IBAction func segueGoToLightRed(_ sender: UIButton) {
        // from bottom to top
        performSegue(withIdentifier: "segueGoToLightRed", sender: nil)
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

