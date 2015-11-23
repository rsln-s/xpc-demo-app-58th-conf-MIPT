//
//  ImageLoader.swift
//  xpc-demo-app-58th-conf-MIPT
//
//  Created by Руслан on 21.11.15.
//  Copyright © 2015 MIPT. All rights reserved.
//

import AppKit

class ImageLoader {
    var url: NSURL?
    var image: NSImage?
    
    func loadImage (){
        if let data = NSData(contentsOfURL: self.url!) {
            if let image = NSImage(data: data){
                self.image = image
            }
        }
    }
    
    init(url: NSURL){
        self.url = url
    }

}