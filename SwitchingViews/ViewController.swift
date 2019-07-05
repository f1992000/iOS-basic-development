//
//  ViewController.swift
//  SwitchingViews
//
//  Created by  DARFON on 2019/6/25.
//  Copyright © 2019  DARFON. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // transfer value to lightyellowviewcontroller
    @IBOutlet weak var inputTextToLightYellow: UITextField!
    @IBAction func goToLightYellow(_ sender: UIButton) {
        let lightYellow = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LightYellow") as! LightYellowViewController
        if inputTextToLightYellow.text != ""{
            lightYellow.receiveLightBlueValue = inputTextToLightYellow.text
            inputTextToLightYellow.text = ""
            // from bottom to top
            present(lightYellow, animated: true, completion: nil)
            // from right to left
            //navigationController?.pushViewController(lightYellow, animated: true)
        }else{
            //build alert
            let nilInputTextAlert = UIAlertController(title: "No Value", message: "Please enter value", preferredStyle: .alert)
            let nilInputTextAlertButtonCancel = UIAlertAction(title: "Cancel", style: .default, handler: nil)
            let nilInputTextAlertButtonGoToNext = UIAlertAction(title: "Go To Light Yellow", style: .default, handler: {
                ACTION in self.present(lightYellow, animated: true, completion: nil)
            })
            nilInputTextAlert.addAction(nilInputTextAlertButtonCancel)
            nilInputTextAlert.addAction(nilInputTextAlertButtonGoToNext)
            present(nilInputTextAlert, animated: true, completion: nil)
        }
    }
    
    
    @IBAction func goToLightRed(_ sender: UIButton) {
        let lightRed = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LightRed")
        
        // from bottom to top
        //present(lightRed, animated: true, completion: nil)
        // from right to left
        navigationController?.pushViewController(lightRed, animated: true)
    }
    
    
    @IBAction func segueGoToLightRed(_ sender: UIButton) {
        // from bottom to top
        performSegue(withIdentifier: "segueGoToLightRed", sender: nil)
    }

    
    //touch space keyboard disappear
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

