//
//  StockTableViewController.m
//  StocksApp
//
//  Created by Colby Gatte on 10/17/16.
//  Copyright © 2016 colbyg. All rights reserved.
//

#import "StockTableViewController.h"

@interface StockTableViewController ()

@end

@implementation StockTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.stockListTable.delegate = self;
    self.stockListTable.dataSource = self;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.delegate.stocks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"StockCell" forIndexPath:indexPath];
    
    Stock *s = self.delegate.stocks[indexPath.row];
    cell.textLabel.text = s.company;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [self.delegate stockTableViewController_DidClickTableCell:indexPath.row];
    
}

@end
