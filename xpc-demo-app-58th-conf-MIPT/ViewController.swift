//
//  ViewController.swift
//  xpc-demo-app-58th-conf-MIPT
//
//  Created by Руслан on 21.11.15.
//  Copyright © 2015 MIPT. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet weak var urlField: NSTextField!
    @IBOutlet weak var imageView: NSImageCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func loadButtonPressed(sender: AnyObject) {
        let url = NSURL(string: urlField.stringValue)!
        MyXPCConnector.sharedInstance.objectProxy.loadImage(url) {
            [weak self](image) in
            if let strongSelf = self{
                if ((image) != nil){
                    strongSelf.imageView.image = image
                }else{
                    let alert = NSAlert()
                    alert.addButtonWithTitle("OK")
                    alert.informativeText = "Failed to load image"
                    alert.runModal()
                }
            }
        }
    }
    
    @IBAction func loadBlackstarButtonPressed(sender: AnyObject) {
        let url = NSURL(string: "http://cdn.pitchfork.com/tracks/17839/homepage_large.d411b55d.jpg")!
        MyXPCConnector.sharedInstance.objectProxy.loadImage(url) {
            [weak self](image) in
            if let strongSelf = self{
                if ((image) != nil){
                    strongSelf.imageView.image = image
                }else{
                    let alert = NSAlert()
                    alert.addButtonWithTitle("OK")
                    alert.informativeText = "Failed to load image"
                    alert.runModal()
                }
            }
        }
    }
}

