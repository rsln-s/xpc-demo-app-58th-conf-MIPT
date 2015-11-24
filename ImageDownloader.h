//
//  ImageDownloader.h
//  xpc-demo-app-58th-conf-MIPT
//
//  Created by Руслан on 24.11.15.
//  Copyright © 2015 MIPT. All rights reserved.
//

#import <Foundation/Foundation.h>
@import AppKit;

@interface ImageDownloader : NSObject

@property NSURL* url;

-(NSImage*) loadImage;
-(id) initWithURL: (NSURL*) url;

@end
