//
//  ViewController.m
//  nonARC
//
//  Created by hanwe on 2020/07/18.
//  Copyright © 2020 hanwe. All rights reserved.
//

#import "ViewController.h"
#import <Foundation/Foundation.h>




@interface MyClass : NSObject <NSCopying>
- (id)copyWithZone:(NSZone *)zone;
@end
@implementation MyClass
- (id)copyWithZone:(NSZone *)zone {
    MyClass *newObj = [[self class] allocWithZone:zone];
    return newObj;
}
@end

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"log1: %lu",[[[MyClass alloc] init] retainCount]);
    id myData = [[MyClass alloc] init];
    NSLog(@"log2: %lu",[myData retainCount]);
    [myData retain];
    [myData retain];
    NSLog(@"log3: %lu",[myData retainCount]);
    [myData release];
    NSLog(@"log4: %lu",[myData retainCount]);
    NSLog(@"log5: %lu",[[myData copy] retainCount]);
}

@end
