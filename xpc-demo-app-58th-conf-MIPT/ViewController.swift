//
//  ViewController.swift
//  xpc-demo-app-58th-conf-MIPT
//
//  Created by Руслан on 21.11.15.
//  Copyright © 2015 MIPT. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var randTextField: NSTextField!
    @IBOutlet weak var urlField: NSTextField!
    @IBOutlet weak var imageView: NSImageCell!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func loadImage(urlString: String){
        let url = NSURL(string: urlString)!
        let myImageLoader = ImageDownloader(URL: url)
        let image = myImageLoader.loadImage()
        if ((image) != nil){
            self.imageView.image = image
        }else{
            let alert = NSAlert()
            alert.addButtonWithTitle("OK")
            alert.informativeText = "Failed to load image"
            alert.runModal()
        }
    }
    
    @IBAction func loadButtonPressed(sender: AnyObject) {
        loadImage(urlField.stringValue)
    }
    
    @IBAction func loadBlackstarButtonPressed(sender: AnyObject) {
        loadImage("http://floodmagazine.com/wp-content/uploads/2014/11/david-bowie_nothing-has-changed.jpeg")
    }
    @IBAction func getRandomNumberButtonPressed(sender: AnyObject) {
        randTextField.stringValue = String(arc4random())
    }
}

