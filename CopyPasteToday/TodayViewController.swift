//
//  TodayViewController.swift
//  CopyPasteToday
//
//  Created by davinorm on 3/2/15.
//  Copyright (c) 2015 David Norman. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
    
    @IBOutlet var spot1TextField: UITextField!
    @IBOutlet var spot2TextField: UITextField!
    @IBOutlet var spot3TextField: UITextField!
    @IBOutlet var spot4TextField: UITextField!
    @IBOutlet var spot5TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view from its nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func spot1EndEditing(sender: UITextField) {
                NSUserDefaults(suiteName: "group.com.davidwnorman.lister.Lister.Documents")!.setObject(sender.text!, forKey: "spot1")
        
    }
    
    @IBAction func spot2EndEditing(sender: UITextField) {
                NSUserDefaults(suiteName: "group.com.davidwnorman.lister.Lister.Documents")!.setObject(sender.text!, forKey: "spot2")
        
    }
    
    @IBAction func spot3EndEditing(sender: UITextField) {
                NSUserDefaults(suiteName: "group.com.davidwnorman.lister.Lister.Documents")!.setObject(sender.text!, forKey: "spot3")
    }
    
    @IBAction func spot4EndEditing(sender: UITextField) {
                NSUserDefaults(suiteName: "group.com.davidwnorman.lister.Lister.Documents")!.setObject(sender.text!, forKey: "spot4")
        
    }
    
    @IBAction func spot5EndEditing(sender: UITextField) {
                NSUserDefaults(suiteName: "group.com.davidwnorman.lister.Lister.Documents")!.setObject(sender.text!, forKey: "spot5")
        
    }
    
    func updateSpot1() {
        if let possText: AnyObject = NSUserDefaults(suiteName: "group.com.davidwnorman.lister.Lister.Documents")?.objectForKey("spot1") {
            spot1TextField.text = possText as! String
        }
    }
    
    func updateSpot2() {
        if let possText: AnyObject = NSUserDefaults(suiteName: "group.com.davidwnorman.lister.Lister.Documents")?.objectForKey("spot2") {
            spot2TextField.text = possText as! String
        }
    }
    
    func updateSpot3() {
        if let possText: AnyObject = NSUserDefaults(suiteName: "group.com.davidwnorman.lister.Lister.Documents")?.objectForKey("spot3") {
            spot3TextField.text = possText as! String
        }
    }
    
    func updateSpot4() {
        if let possText: AnyObject = NSUserDefaults(suiteName: "group.com.davidwnorman.lister.Lister.Documents")?.objectForKey("spot4") {
            self.spot4TextField.text = possText as! String
        }
    }
    
    func updateSpot5() {
        if let possText: AnyObject = NSUserDefaults(suiteName: "group.com.davidwnorman.lister.Lister.Documents")?.objectForKey("spot5") {
            self.spot5TextField.text = possText as! String
        }
    }
    
    func widgetPerformUpdateWithCompletionHandler(completionHandler: ((NCUpdateResult) -> Void)!) {
        
        self.updateSpot1()
        self.updateSpot2()
        self.updateSpot3()
        self.updateSpot4()
        self.updateSpot5()
        
        // Perform any setup necessary in order to update the view.

        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData

        completionHandler(NCUpdateResult.NewData)
    }
    
}
