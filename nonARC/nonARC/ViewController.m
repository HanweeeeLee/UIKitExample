//
//  ViewController.m
//  nonARC
//
//  Created by hanwe on 2020/07/18.
//  Copyright © 2020 hanwe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSData * data = [[NSData alloc] init]; //retain count + 1
    NSData * dataPtr = data; //retain count + 1
    [data retain]; //retain count + 1
    [data release]; //retain count - 1
    [data release]; //retain count - 1
    [data autorelease]; //auto
    
}


@end
