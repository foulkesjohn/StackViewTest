#import "TestCell.h"
#import <ORStackView/ORStackView.h>
#import <FLKAutoLayout/UIView+FLKAutoLayout.h>

@implementation TestCell

- (void)loadCell
{
  ORStackView *stackView = [[ORStackView alloc] init];
  
  UINib *nib = [UINib nibWithNibName:@"TestView" bundle:[NSBundle mainBundle]];
  
  for (NSInteger i = 0; i < 3; i++) {
    UIView *view = [nib instantiateWithOwner:self options:nil][0];
    [stackView addSubview:view withTopMargin:@"10" sideMargin:@"10"];
  }
  
  [self.contentView addSubview:stackView];
  [stackView alignToView:self.contentView];
}

@end