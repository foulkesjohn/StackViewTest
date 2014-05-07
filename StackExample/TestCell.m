#import "TestCell.h"
#import <ORStackView/ORStackView.h>

@implementation TestCell

- (void)loadCell
{
  ORStackView *stackView = [[ORStackView alloc] init];
  
  UILabel *labelOne = [[UILabel alloc] init];
  labelOne.text = @"One";
  
  UILabel *labelTwo = [[UILabel alloc] init];
  labelOne.text = @"Two";
  
  [stackView addSubview:labelOne withTopMargin:@"10"];
  [stackView addSubview:labelTwo withTopMargin:@"20"];
  
  [self.contentView addSubview:stackView];
}

@end