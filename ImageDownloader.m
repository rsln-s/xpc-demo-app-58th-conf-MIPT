//
//  ImageDownloader.m
//  xpc-demo-app-58th-conf-MIPT
//
//  Created by Руслан on 24.11.15.
//  Copyright © 2015 MIPT. All rights reserved.
//

#import "ImageDownloader.h"

@implementation ImageDownloader

-(id)initWithURL:(NSURL *)url {
    self = [super init];
    if (self) {
        self.url = url;
    }
    return self;
}

-(NSImage*) loadImage {
    NSData* data = [NSData dataWithContentsOfURL:self.url];
    if (data) {
        NSImage* image = [[NSImage alloc] initWithData:data];
        if (image) {
            return image;
        }
    }
    printf("Loading failed");
    return nil;
}

@end
