//
//  LYViewController.m
//  LTExtNSString
//
//  Created by yelon21 on 07/13/2016.
//  Copyright (c) 2016 yelon21. All rights reserved.
//

#import "LYViewController.h"
#import "NSString+LTRex.h"

@interface LYViewController ()

@end

@implementation LYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *mobile = [NSString stringWithFormat:@"17099999999"];
    if (![mobile lt_isPhoneNumberStringContainVirtualNumber]) {
        
        NSLog(@"mobile=%@",mobile);
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
