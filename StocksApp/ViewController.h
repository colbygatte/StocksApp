//
//  ViewController.h
//  StocksApp
//
//  Created by Colby Gatte on 10/17/16.
//  Copyright © 2016 colbyg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StockViewController.h"
#import "StockTableViewController.h"
#import "Stock.h"



@interface ViewController : UIViewController <StockTableViewController_Delegate, StockViewController_Delegate>

@property (nonatomic, strong) StockTableViewController *stockTableViewController;
@property (nonatomic, strong) StockViewController *stockViewController;
@property (nonatomic, strong) NSMutableArray *stocks;

@end

