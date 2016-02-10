//
//  BaseCell.h
//  tableViewFectory
//
//  Created by 徐继垚 on 16/2/11.
//  Copyright © 2016年 Sunny土. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BaseModel;

@interface BaseCell : UITableViewCell

- (void)drawCellWithModel:(BaseModel *)model;

- (CGFloat)cellHight;
@end
