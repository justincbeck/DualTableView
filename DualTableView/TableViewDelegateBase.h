//
//  TableViewDelegateBase.h
//  DualTableView
//
//  Created by Justin C. Beck on 12/7/12.
//  Copyright (c) 2012 Beckproduct. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MasterViewController.h"

@interface TableViewDelegateBase : NSObject <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSMutableArray *objects;
@property (nonatomic, strong) MasterViewController *masterViewController;

@end
