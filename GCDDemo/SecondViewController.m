//
//  SecondViewController.m
//  GCDDemo
//
//  Created by Lewis W. Johnson on 8/24/14.
//  Copyright (c) 2014 HamiltonHoltInc. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize count;
@synthesize downloadOperatioQueQueue;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self doit];
}

- (void)doit
{
    // put image objects on ViewController to hold images
  
    
    // bring operation que into being
    downloadOperatioQueQueue = [[NSOperationQueue alloc] init];
    downloadOperatioQueQueue.name = @"Download Queue";
    downloadOperatioQueQueue.maxConcurrentOperationCount = 1;

    // image urls to pass into work objects
    NSArray *images = @[@"http://hamiltonholt.com/hamiltonholt/hamiltonholt/Xpedoc_files/image8.jpg",
                        @"http://hamiltonholt.com/hamiltonholt/hamiltonholt/Welcome_files/shapeimage_1.png"];
    
    //create first work object
    NSOperationOperation * myfirstoperation = [NSOperationOperation alloc] ;
    [myfirstoperation initWithCallBack:^{
        
        
               [_targetimage1 setImage:myfirstoperation.image];

        
    }];
    
    myfirstoperation.url = [NSURL URLWithString:images[0]];
    
    //create second work object
    NSOperationOperation * mysecondoperation = [NSOperationOperation alloc] ;
    [mysecondoperation initWithCallBack:^{
        
                [
                 _targetimage2 setImage:mysecondoperation.image];

        
    }];

    
    mysecondoperation.url = [NSURL URLWithString:images[1]];

    
    
    //add to work queue
    [downloadOperatioQueQueue addOperation:myfirstoperation];
    [downloadOperatioQueQueue addOperation:mysecondoperation];

    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ButtonClicked:(id)sender
{
    count++;
   


}
@end
