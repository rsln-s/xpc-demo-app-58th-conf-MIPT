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
        let myImageLoader = ImageLoader(url: url, imageCell: imageView)
        myImageLoader.loadImage()
    }
    
    @IBAction func loadBlackstarButtonPressed(sender: AnyObject) {
        let url = NSURL(string: "http://nme.assets.ipccdn.co.uk/images/2015DavidBowie_Press_191115.article_x4.jpg")!
        let myImageLoader = ImageLoader(url: url, imageCell: imageView)
        myImageLoader.loadImage()
    }
}

