//
//  ImageLoadHelper.m
//  ImageLoadHelper
//
//  Created by Руслан on 25.11.15.
//  Copyright © 2015 MIPT. All rights reserved.
//

#import "ImageLoadHelper.h"
#import "ImageDownloader.h"
@implementation ImageLoadHelper

// This implements the example protocol. Replace the body of this class with the implementation of this service's protocol.
- (void)loadImage:(NSURL *)url withReply:(void (^)(NSImage *))reply {
    ImageDownloader* myLoader = [[ImageDownloader alloc] initWithURL:url];
    reply(myLoader.loadImage);
}

@end
