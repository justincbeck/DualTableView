//
//  BarTableViewDelegate.m
//  DualTableView
//
//  Created by Justin C. Beck on 12/7/12.
//  Copyright (c) 2012 Beckproduct. All rights reserved.
//

#import "BarTableViewDelegate.h"
#import "DetailViewController.h"

@implementation BarTableViewDelegate

- (id)init
{
    self = [super init];
    if (self)
    {
        self.objects = [[NSMutableArray alloc] initWithObjects:@"Oof", @"Rab", @"Zab", nil];
    }
    
    return self;
}

@end
