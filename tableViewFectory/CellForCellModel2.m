//
//  CellForCellModel2.m
//  tableViewFectory
//
//  Created by 徐继垚 on 16/2/11.
//  Copyright © 2016年 Sunny土. All rights reserved.
//

#import "CellForCellModel2.h"
#import "CellModel2.h"

@implementation CellForCellModel2
-(void)drawCellWithModel:(BaseModel *)model {
    [super drawCellWithModel:model];
    
    CellModel2 * model2 = (CellModel2 *)model;
    
    self.mainImage.image = model2.faceImage;
    self.titltLabel.text = model2.title;
    
    
}
-(CGFloat)cellHight {
//    [super cellHight];
    return 62;
}
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
