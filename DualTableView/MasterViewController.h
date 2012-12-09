//
//  MasterViewController.h
//  DualTableView
//
//  Created by Justin C. Beck on 12/7/12.
//  Copyright (c) 2012 Beckproduct. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UIViewController

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (strong, nonatomic) UITableView *tableView;
@property (weak, nonatomic) IBOutlet UITableView *fooTableView;
@property (weak, nonatomic) IBOutlet UITableView *barTableView;

@end
