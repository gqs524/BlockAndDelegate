//
//  SecondViewController.h
//  BlockAndDelegate
//
//  Created by 高青松 on 16/7/15.
//  Copyright © 2016年 高青松. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SecondViewControllerDelegate <NSObject>

- (void)pssTFString:(NSString *)tfString;

@end


@interface SecondViewController : UIViewController
@property (nonatomic,assign)id<SecondViewControllerDelegate> delegate;
@property (nonatomic,copy) void(^myBlock)(NSString *string);
@end
