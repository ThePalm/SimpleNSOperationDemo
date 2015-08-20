//
//  NSOperationOperation.m
//  NSOperationDemo
//
//  Created by Lewis W. Johnson on 8/18/15.
//  Copyright (c) 2015 HamiltonHoltInc. All rights reserved.
//

#import "NSOperationOperation.h"

@implementation NSOperationOperation
@synthesize image;
@synthesize url;
@synthesize imageData;

-(void) initWithCallBack:(void(^)())sentblock;
{
    [super init];
    
    self.callbackBlock = sentblock;
    
}

#pragma mark -
#pragma mark - Downloading image

// 3: Regularly check for isCancelled, to make sure the operation terminates as soon as possible.
- (void)main
{
    
    @autoreleasepool
    {
        
        imageData = [NSData dataWithContentsOfURL:url];
        
        
        if (self.isCancelled)
        {
            image = nil;
            return;
        }
        
        image = [UIImage imageWithData:imageData];

        if (image)
        {
            self.callbackBlock();

        }
        else
        {
            NSLog(@"FAILED");
        }
        
    }
}

@end
