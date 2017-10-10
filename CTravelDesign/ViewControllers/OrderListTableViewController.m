//
//  OrderListTableViewController.m
//  CTravelDesign
//
//  Created by Adina Abilda on 10.10.17.
//  Copyright © 2017 Kenzhebekova. All rights reserved.
//

#import "OrderListTableViewController.h"
#import "OrderListTableViewCell.h"

@interface OrderListTableViewController ()

@end

@implementation OrderListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellIdentifier = @"OrderListCell";
    OrderListTableViewCell *cell = (OrderListTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"OrderListTableViewCell" bundle:nil] forCellReuseIdentifier:cellIdentifier];
        cell = (OrderListTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    }
    
    cell.name.text = @"KENZHEBEKOVA";
    cell.date.text = @"10.10.2017";
    cell.details.text = @"Алматы - Астана/ 12.12.2017";
    cell.orderNumber.text = @"#1234567";
    cell.statusImage.image = [UIImage imageNamed:@"status.png"];
    cell.ticketTypeImage.image = [UIImage imageNamed:@"ticket.png"];
    
    return cell;
}

@end
