//
//  FooTableViewDelegate.m
//  DualTableView
//
//  Created by Justin C. Beck on 12/7/12.
//  Copyright (c) 2012 Beckproduct. All rights reserved.
//

#import "FooTableViewDelegate.h"
#import "DetailViewController.h"

@implementation FooTableViewDelegate

- (id)init
{
    self = [super init];
    if (self)
    {
        self.objects = [[NSMutableArray alloc] initWithObjects:@"Foo", @"Bar", @"Baz", nil];
    }
    
    return self;
}

@end
