//
//  ZDLoginViewController.swift
//  CRMAppSwift
//
//  Created by joseph on 8/15/14.
//
//

import UIKit

class ZDFirstLoginViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField?
    @IBOutlet var passwordTextField: UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButtonPressed(sender: AnyObject?) {
        // Sync invoke
        if CJClientStore.sharedInstance.loginWithUserName("", andPassword: "") {
            self.performSegueWithIdentifier("Show Main", sender: self)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
