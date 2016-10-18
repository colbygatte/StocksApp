//
//  Stock.m
//  StocksApp
//
//  Created by Colby Gatte on 10/17/16.
//  Copyright © 2016 colbyg. All rights reserved.
//

#import "Stock.h"

@implementation Stock

- (id) initWithCoder:(NSCoder *)decoder {
    if(self = [super init]) {
        self.company = [decoder decodeObjectForKey:@"company"];
    }
    
    return self;
}

- (void) encodeWithCoder:(NSCoder *) encoder {
    [encoder encodeObject:self.company forKey:@"company"];
}

@end
