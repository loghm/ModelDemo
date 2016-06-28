//
//  ViewController.m
//  ModelDemo
//
//  Created by 黄明族 on 16/6/28.
//  Copyright © 2016年 黄明族. All rights reserved.
//

#import "ViewController.h"
#import "FirstModel.h"



@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController {
    UITableView *localTableView;
    NSMutableArray *dataSource;
}


- (void)UIInit {
    localTableView = [[UITableView alloc] init];
    localTableView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    localTableView.delegate = self;
    localTableView.dataSource = self;
    [self.view addSubview:localTableView];
}


- (void)initDataSource:(NSArray *)dicArray {
    dataSource = [[NSMutableArray alloc]init];
    for (NSDictionary *dic in dicArray) {
        FirstModel *model = [FirstModel modelWithDict:dic];
        [dataSource addObject:model];
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self UIInit];
    [self initDataSource:@[@{@"name":@"黄智擒",
                             @"phoneNumber":@"123456789",
                             @"address":@"时代荆轲名媛 17-1102",
                             @"defaultAddress":@"0",
                             @"addressDetail":@"addressDetail",
                             @"num":@"987654321"},
  @{@"name":@"黄智擒",
    @"phoneNumber":@"123456789",
    @"address":@"时代荆轲名媛 17-1102",
    @"defaultAddress":@"1",
    @"addressDetail":@"addressDetail",
    @"num":@"987654321"},
  @{@"name":@"黄智擒",
    @"phoneNumber":@"123456789",
    @"address":@"时代荆轲名媛 17-1102",
    @"defaultAddress":@"0",
    @"addressDetail":@"addressDetail",
    @"num":@"987654321"},
  @{@"name":@"黄智擒",
    @"phoneNumber":@"123456789",
    @"address":@"时代荆轲名媛 17-1102",
    @"defaultAddress":@"0",
    @"addressDetail":@"addressDetail",
    @"num":@"987654321"},
  @{@"name":@"黄智擒",
    @"phoneNumber":@"123456789",
    @"address":@"时代荆轲名媛 17-1102",
    @"defaultAddress":@"0",
    @"addressDetail":@"addressDetail",
    @"num":@"987654321"},
  @{@"name":@"黄智擒",
    @"phoneNumber":@"123456789",
    @"address":@"时代荆轲名媛 17-1102",
    @"defaultAddress":@"0",
    @"addressDetail":@"addressDetail",
    @"num":@"987654321"}]];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return dataSource.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identity = @"identity";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identity];
    }
    FirstModel *mode = dataSource[indexPath.row];
    cell.textLabel.text = mode.name;
    cell.detailTextLabel.text = mode.phoneNumber;
    
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
