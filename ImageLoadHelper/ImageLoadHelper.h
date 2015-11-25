//
//  ImageLoadHelper.h
//  ImageLoadHelper
//
//  Created by Руслан on 25.11.15.
//  Copyright © 2015 MIPT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ImageLoadHelperProtocol.h"

// This object implements the protocol which we have defined. It provides the actual behavior for the service. It is 'exported' by the service to make it available to the process hosting the service over an NSXPCConnection.
@interface ImageLoadHelper : NSObject <ImageLoadHelperProtocol>
@end
