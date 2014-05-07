//
//  ViewController.m
//  StackExample
//
//  Created by John Foulkes on 07/05/2014.
//
//

#import "ViewController.h"
#import "TestCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  TestCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
  [cell loadCell];
  
  return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
  return 330;
}

@end
