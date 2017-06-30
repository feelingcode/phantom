//
//  ProviderLoginViewController.h
//  InvisibleHand
//
//  Created by Jing Xie on 6/30/17.
//  Copyright © 2017 ZK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProviderLoginViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *bankLogo;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *backButton;
@property (weak, nonatomic) NSString *bankName;

- (IBAction)back:(id)sender;


@end
