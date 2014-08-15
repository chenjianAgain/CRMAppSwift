//
//  ZDSettingsViewController.swift
//  CRMManagerSwift
//
//  Created by joseph on 8/14/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ZDSettingsViewController: UITableViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet var gesturePasswordSwitch: UISwitch?
    @IBAction func loginOut(sender: AnyObject) {
        var alertView = UIAlertView(title: "你好", message: "确定退出", delegate: nil, cancelButtonTitle: "取消", otherButtonTitles: "确定")
        alertView.show()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    override func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        if indexPath.section == 0 {
            switch indexPath.row {
            case 0:
                self.performSegueWithIdentifier("QAView Display", sender: self)
                break
            case 1:
                self.performSegueWithIdentifier("SuggestionView Display", sender: self)
                break
            case 3:
                self.performSegueWithIdentifier("GesturePasswordSettingView Display", sender: self)
                break
            default:
                break
            }
        }
    }
}
