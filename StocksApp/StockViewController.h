//
//  StockViewController.h
//  StocksApp
//
//  Created by Colby Gatte on 10/17/16.
//  Copyright © 2016 colbyg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Stock.h"

@protocol StockViewController_Delegate
@property (nonatomic, strong) NSMutableArray *stocks;
@end



@interface StockViewController : UIViewController

@property (nonatomic, strong) id<StockViewController_Delegate> delegate;
@property (nonatomic, weak) IBOutlet UILabel *textLabel;

@end
