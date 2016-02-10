//
//  CellFectory.m
//  tableViewFectory
//
//  Created by 徐继垚 on 16/2/11.
//  Copyright © 2016年 Sunny土. All rights reserved.
//

#import "CellFectory.h"


@implementation CellFectory
+(BaseCell *)cellForModel:(BaseModel *)model {
    
    NSString * modelClass = NSStringFromClass([model class]);
    
    BaseCell * cell =  [[NSBundle mainBundle]loadNibNamed:[NSString stringWithFormat:@"CellFor%@" , modelClass] owner:nil options:nil].firstObject;
    [cell drawCellWithModel:model];
    
    return cell;
    
    
    
}
+ (CGFloat)hightForModel:(BaseModel *)model {
    
    NSString * modelClass = NSStringFromClass([model class]);
    
    BaseCell * cell = [[NSClassFromString([NSString stringWithFormat:@"CellFor%@" , modelClass]) alloc]init];
    
    return [cell cellHight];
    
    
    
}
@end
