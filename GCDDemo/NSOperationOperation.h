//
//  NSOperationOperation.h
//  NSOperationDemo
//
//  Created by Lewis W. Johnson on 8/18/15.
//  Copyright (c) 2015 HamiltonHoltInc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSOperationOperation : NSOperation

//block callback code
@property (copy) void(^callbackBlock)();     //1
@property (nonatomic, strong) NSURL *url;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSData *imageData;

-(void) initWithCallBack:(void(^)())sentblock;

@end
