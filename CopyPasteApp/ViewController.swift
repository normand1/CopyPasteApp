//
//  ViewController.swift
//  CopyPasteApp
//
//  Created by davinorm on 2/27/15.
//  Copyright (c) 2015 David Norman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var spot1Field: UITextField!
    @IBOutlet var spot2Field: UITextField!
    @IBOutlet var spot3Field: UITextField!
    @IBOutlet var spot4Field: UITextField!
    @IBOutlet var spot5Field: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func spot1EndEditing(sender: UITextField!) {
        NSUserDefaults(suiteName: "group.com.davidwnorman.lister.Lister.Documents")!.setObject(sender.text!, forKey: "spot1")
    }
    
    @IBAction func spot2EndEditing(sender: UITextField!) {
        
        NSUserDefaults(suiteName: "group.com.davidwnorman.lister.Lister.Documents")!.setObject(sender.text!, forKey: "spot2")
    }
    
    @IBAction func spot3EndEditing(sender: UITextField!) {
        
        NSUserDefaults(suiteName: "group.com.davidwnorman.lister.Lister.Documents")!.setObject(sender.text!, forKey: "spot3")
    }
    
    @IBAction func spot4EndEditing(sender: UITextField!) {
        
        NSUserDefaults(suiteName: "group.com.davidwnorman.lister.Lister.Documents")!.setObject(sender.text!, forKey: "spot4")
    }
    
    @IBAction func spot5EndEditing(sender: UITextField!) {
        
        NSUserDefaults(suiteName: "group.com.davidwnorman.lister.Lister.Documents")!.setObject(sender.text!, forKey: "spot5")
    }
    
    func updateSpot1() {
        if let possText: AnyObject = NSUserDefaults(suiteName: "group.com.davidwnorman.lister.Lister.Documents")?.objectForKey("spot1") {
            spot1Field.text = possText as! String
        }
    }
    
    func updateSpot2() {
        if let possText: AnyObject = NSUserDefaults(suiteName: "group.com.davidwnorman.lister.Lister.Documents")?.objectForKey("spot2") {
            spot2Field.text = possText as! String
        }
    }
    
    func updateSpot3() {
        if let possText: AnyObject = NSUserDefaults(suiteName: "group.com.davidwnorman.lister.Lister.Documents")?.objectForKey("spot3") {
            spot3Field.text = possText as! String
        }
    }
    
    func updateSpot4() {
        if let possText: AnyObject = NSUserDefaults(suiteName: "group.com.davidwnorman.lister.Lister.Documents")?.objectForKey("spot4") {
            self.spot4Field.text = possText as! String
        }
    }
    
    func updateSpot5() {
        if let possText: AnyObject = NSUserDefaults(suiteName: "group.com.davidwnorman.lister.Lister.Documents")?.objectForKey("spot5") {
            self.spot5Field.text = possText as! String
        }
    }
    
    
    
    func updateAllSpots() {
        updateSpot1()
        updateSpot2()
        updateSpot3()
        updateSpot4()
        updateSpot5()
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
            self.view.endEditing(true)
    }
    
    override func viewDidAppear(animated: Bool) {
        updateAllSpots()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

