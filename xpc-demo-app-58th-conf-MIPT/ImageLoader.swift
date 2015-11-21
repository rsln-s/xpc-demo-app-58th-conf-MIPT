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
    var imageCell: NSImageCell?
    
    func loadImage (){
        if let data = NSData(contentsOfURL: self.url!) {
            if let image = NSImage(data: data){
                self.imageCell!.image = image
            }
        }
    }
    
    init(url: NSURL, imageCell: NSImageCell){
        self.url = url
        self.imageCell = imageCell
    }

}