//
//  AddStockViewController.m
//  StocksApp
//
//  Created by Colby Gatte on 10/18/16.
//  Copyright © 2016 colbyg. All rights reserved.
//

#import "AddStockViewController.h"

@interface AddStockViewController ()

@end

@implementation AddStockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}

- (IBAction)addButtonPressed {
    
    Stock *stock = [[Stock alloc] init];
    stock.company = self.stockNameTextField.text;
    [self.delegate addStockViewController_AddStock:stock];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (IBAction) cancelButtonPressed {
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





@end
