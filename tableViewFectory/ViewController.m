//
//  ViewController.m
//  tableViewFectory
//
//  Created by 徐继垚 on 16/2/11.
//  Copyright © 2016年 Sunny土. All rights reserved.
//

#import "ViewController.h"
#import "CellFectory.h"

@interface ViewController ()<UITableViewDelegate , UITableViewDataSource>
@property (nonatomic ,retain) UITableView * tableView;

@property (nonatomic ,retain) NSMutableArray * array;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CellModel2 * model = [[CellModel2 alloc]init];
    model.faceImage = [UIImage imageNamed:@"1.jpg"];
    model.title = @"卖家服务很好 ，考虑非常周到，以后看到喜欢的衣服还会来买的";
    
    CellModel1 * model1 = [[CellModel1 alloc]init];
    model1.image1 = [UIImage imageNamed:@"2.jpg"];
    model1.image2 = [UIImage imageNamed:@"3.jpg"];
    model1.image3 = [UIImage imageNamed:@"4.jpg"];
    
    self.array = [NSMutableArray arrayWithObjects:model ,model ,model,model1 ,model , model1 , model1 ,model,model ,model ,model ,nil];
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _array.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    BaseModel * model = (BaseModel *)_array[indexPath.row];
    
     NSString * indentifier = NSStringFromClass([model class]);
    
    BaseCell * cell = [tableView dequeueReusableCellWithIdentifier:indentifier];
    if (!cell) {
        cell = [CellFectory cellForModel:model];
    }
    
    return cell;
    
    
}
- (CGFloat )tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
       BaseModel * model = (BaseModel *)_array[indexPath.row];
    
    return [CellFectory hightForModel:model];
    
    
}
-(void)loadView {
    [super loadView];
    
    self.tableView = [[UITableView alloc]initWithFrame:self.view.frame];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
