//
//  AddStockViewController.h
//  StocksApp
//
//  Created by Colby Gatte on 10/18/16.
//  Copyright © 2016 colbyg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Stock.h"

@protocol AddStockViewController_Delegate <NSObject>
- (void) addStockViewController_AddStock:(Stock *) stock;
@end


@interface AddStockViewController : UIViewController

@property (nonatomic, strong) IBOutlet UITextField *stockNameTextField;
@property (nonatomic, strong) id<AddStockViewController_Delegate> delegate;

@end
