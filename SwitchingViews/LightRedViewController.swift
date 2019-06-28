//
//  LightRedViewController.swift
//  SwitchingViews
//
//  Created by  DARFON on 2019/6/25.
//  Copyright © 2019  DARFON. All rights reserved.
//

import UIKit

class LightRedViewController: UIViewController {
    
    @IBAction func goToTabBarController(_ sender: UIButton) {
        let tabBarController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TabBarController")
        present(tabBarController, animated: true, completion: nil)
    }
    
    
    @IBAction func goToLightGreen(_ sender: UIButton) {
        let lightGreen = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LightGreen")
        
        //from right to left
        navigationController?.pushViewController(lightGreen, animated: true)
        // from bottom to top
        //present(lightGreen, animated: true, completion: nil)

    }
    
    
    @IBOutlet weak var inputTextToLightGreen: UITextField!
    
    @IBAction func segueGoToLightGreen(_ sender: UIButton) {
        // Input Text Transfer
        if let inputText = inputTextToLightGreen.text{
            if inputText == ""{
                //build alert
                let nilInputTextAlert = UIAlertController(title: "No Value", message: "Please enter value", preferredStyle: .alert)
                let nilInputTextAlertButtonGoToNext = UIAlertAction(title: "Go To Light Greeen", style: .default, handler: nil)
                let nilInputTextAlertButtonCancel = UIAlertAction(title: "Cancel", style: .default, handler: nil)
                nilInputTextAlert.addAction(nilInputTextAlertButtonGoToNext)
                nilInputTextAlert.addAction(nilInputTextAlertButtonCancel)
                present(nilInputTextAlert, animated: true, completion: nil)
            }else{
                inputTextToLightGreen.text = ""
                performSegue(withIdentifier: "segueGoToLightGreen", sender: inputText)
            }
        }
    }
    // prepare transfer value
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueGoToLightGreen"{
            if let lightGreen = segue.destination as? LightGreenViewController{
                lightGreen.receiveLightRedValue = sender as? String
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    //touch space keyboard disappear
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}
