//
//  MainViewController.swift
//  IOSFirebase
//
//  Created by Михаил Коновалов on 02/11/2018.
//  Copyright © 2018 Mikhail Konovalov. All rights reserved.
//

import UIKit
import Firebase
class MainViewController: UIViewController {
     @IBOutlet weak var logOutButton: UIButton!
      override func viewDidLoad() {
        super.viewDidLoad()
        logOutButton.layer.borderWidth = 2
        
        logOutButton.layer.cornerRadius = 10
        
        logOutButton.layer.borderColor = UIColor.blue.cgColor
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func logOutButtonPressed(_ sender: UIButton) {
        do{
       
        try Auth.auth().signOut()
        }catch{
            print("there was a problem signing out")
        }
        guard (navigationController?.popToRootViewController( animated: true))  != nil
            else {
            print("You are signed out")
                return
        }
    }

}
