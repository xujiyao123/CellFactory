//
//  CellFectory.h
//  tableViewFectory
//
//  Created by 徐继垚 on 16/2/11.
//  Copyright © 2016年 Sunny土. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CellForCellModel1.h"
#import "CellForCellModel2.h"
#import "CellModel1.h"
#import "CellModel2.h"
#import "BaseCell.h"
#import "BaseModel.h"
#import "UIView+Nib.h"


@interface CellFectory : NSObject

+(BaseCell *)cellForModel:(BaseModel *)model;

+ (CGFloat )hightForModel:(BaseModel *)model;

@end
