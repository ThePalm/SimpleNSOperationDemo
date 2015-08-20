//
//  SecondViewController.h
//  GCDDemo
//
//  Created by Lewis W. Johnson on 8/24/14.
//  Copyright (c) 2014 HamiltonHoltInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSOperationOperation.h"

@interface SecondViewController : UIViewController

@property int count;
@property (nonatomic, strong) NSMutableDictionary *downloadsInProgress;
@property (nonatomic, strong) NSOperationQueue *downloadOperatioQueQueue;
@property (weak, nonatomic) IBOutlet UIImageView *targetimage1;
@property (weak, nonatomic) IBOutlet UIImageView *targetimage2;

//targetimage1
//targetimage2

@end
