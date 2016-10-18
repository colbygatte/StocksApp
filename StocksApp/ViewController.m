//
//  ViewController.m
//  StocksApp
//
//  Created by Colby Gatte on 10/17/16.
//  Copyright © 2016 colbyg. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //
    // Assign these children
    NSArray *children = self.childViewControllers;
    
    self.stockViewController = children[1];
    self.stockTableViewController = children[0];
    
    self.stockViewController.delegate = self;
    self.stockTableViewController.delegate = self;
    
    //
    // Stocks
    self.stocks = [[NSMutableArray alloc] init];
    [self loadStockData];
    
}

- (void) saveStockData {
    NSUserDefaults *defaults = [[NSUserDefaults alloc] init];
    NSData *encodedData = [NSKeyedArchiver archivedDataWithRootObject:self.stocks];
    
    [defaults setObject:encodedData forKey:@"stocks"];
    [defaults synchronize];
}

- (void) loadStockData {
    NSUserDefaults *defaults = [[NSUserDefaults alloc] init];
    NSData *encodedData = [defaults objectForKey:@"stocks"];
    self.stocks = [NSKeyedUnarchiver unarchiveObjectWithData:encodedData];
}



- (void) stockTableViewController_DidClickTableCell:(NSInteger)index {
    Stock *chosenStock = self.stocks[index];
    self.stockViewController.textLabel.text = chosenStock.company;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
