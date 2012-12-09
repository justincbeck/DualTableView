//
//  MasterViewController.m
//  DualTableView
//
//  Created by Justin C. Beck on 12/7/12.
//  Copyright (c) 2012 Beckproduct. All rights reserved.
//

#import "MasterViewController.h"

#import "DetailViewController.h"

#import "FooTableViewDelegate.h"
#import "BarTableViewDelegate.h"

@interface MasterViewController ()
{
    FooTableViewDelegate *_fooTableViewDelegate;
    BarTableViewDelegate *_barTableViewDelegate;
}


@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@end

@implementation MasterViewController

- (void)awakeFromNib
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        self.contentSizeForViewInPopover = CGSizeMake(320.0, 600.0);
    }
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.detailViewController = (DetailViewController *)[[self.splitViewController.viewControllers lastObject] topViewController];
    
    _fooTableViewDelegate = [[FooTableViewDelegate alloc] init];
    _fooTableViewDelegate.masterViewController = self;
    self.fooTableView.delegate = _fooTableViewDelegate;
    self.fooTableView.dataSource = _fooTableViewDelegate;
    
    _barTableViewDelegate = [[BarTableViewDelegate alloc] init];
    _barTableViewDelegate.masterViewController = self;
    self.barTableView.delegate = _barTableViewDelegate;
    self.barTableView.dataSource = _barTableViewDelegate;
    
    self.barTableView.hidden = YES;
    
    [self.segmentedControl addTarget:self action:@selector(switchViews:) forControlEvents:UIControlEventValueChanged];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)switchViews:(UISegmentedControl *)segmentedControl
{
    switch (segmentedControl.selectedSegmentIndex) {
        case 0:
        {
            self.barTableView.hidden = YES;
            self.fooTableView.hidden = NO;
            self.tableView = self.fooTableView;
            NSIndexPath *selection = [self.fooTableView indexPathForSelectedRow];
            NSDate *object = _fooTableViewDelegate.objects[selection.row];
            self.detailViewController.detailItem = object;

            break;
        }
        case 1:
        {
            self.fooTableView.hidden = YES;
            self.barTableView.hidden = NO;
            self.tableView = self.barTableView;
            NSIndexPath *selection = [self.barTableView indexPathForSelectedRow];
            NSDate *object = _barTableViewDelegate.objects[selection.row];
            self.detailViewController.detailItem = object;

            break;
        }
        default:
            break;
    }
}

@end
