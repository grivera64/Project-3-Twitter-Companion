//
//  LoginViewController.swift
//  Twitter
//
//  Created by CSUDH on 3/8/21.
//  Copyright © 2021 Dan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    
    @IBAction func onLoginButton(_ sender: Any) {
        
        print("Button pressed!")
        
        let myUrl = "https://api.twitter.com/oauth/request_token"
        
        TwitterAPICaller.client?.login(url: myUrl, success: {
            
            UserDefaults.standard.set(true, forKey: "userLoggedIn")
            self.performSegue(withIdentifier: "loginToHome", sender: self)
            
            
        }, failure: { (Error) in
            
            print("Could not log-in")
            
        })
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func viewDidAppear(_ animated: Bool) {
        
        
        if (UserDefaults.standard.bool(forKey: "userLoggedIn"))
        {
            
            self.performSegue(withIdentifier: "loginToHome", sender: self)
            
        }
        
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
