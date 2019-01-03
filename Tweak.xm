#import <UIKit/UIKit.h>
#import "substrate.h"

@interface UIStatusBar : UIView 
{
UILabel *_doubleHeightLabel;

}


@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;

@end

%hook UIStatusBar

- (void)layoutSubviews {
    %orig;
 UILabel *doubleHeightLabel = MSHookIvar<UILabel *>(self, "_doubleHeightLabel");
doubleHeightLabel.hidden = YES;

self.frame = CGRectMake( 0, 0, [UIScreen mainScreen].bounds.size.width, 20);

}
%end
