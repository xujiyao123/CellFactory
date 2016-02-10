//
//  CellForCellModel1.m
//  tableViewFectory
//
//  Created by 徐继垚 on 16/2/11.
//  Copyright © 2016年 Sunny土. All rights reserved.
//

#import "CellForCellModel1.h"
#import "CellModel1.h"

@implementation CellForCellModel1
-(void)drawCellWithModel:(BaseModel *)model {
    
    [super drawCellWithModel:model];
    
    CellModel1 * model1 = (CellModel1 *)model;
    
    self.MainImage1.image = model1.image1;
    self.mainimahe2.image = model1.image2;
    self.mainImage3.image = model1.image3;
    
    
}
-(CGFloat)cellHight {
//    [super cellHight];
    return 117;
}
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
