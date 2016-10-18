//
//  StockTableViewController.h
//  StocksApp
//
//  Created by Colby Gatte on 10/17/16.
//  Copyright © 2016 colbyg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Stock.h"
#import "AddStockViewController.h"

@protocol StockTableViewController_Delegate <NSObject>
@property (nonatomic, strong) NSMutableArray *stocks;
- (void) stockTableViewController_DidClickTableCell:(NSInteger)index;
- (void) saveStockData;
@end

@interface StockTableViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, AddStockViewController_Delegate>

@property (nonatomic, strong) id<StockTableViewController_Delegate> delegate;
@property (nonatomic, weak) IBOutlet UITableView *stockListTable;

@end
