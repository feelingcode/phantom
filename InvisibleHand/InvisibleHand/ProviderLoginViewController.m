//
//  ProviderLoginViewController.m
//  InvisibleHand
//
//  Created by Jing Xie on 6/30/17.
//  Copyright © 2017 ZK. All rights reserved.
//

#import "ProviderLoginViewController.h"

@implementation ProviderLoginViewController


- (void)viewDidLoad{
	[super viewDidLoad];
	
	self.bankLogo.image = [UIImage imageNamed:self.bankName];
}

- (IBAction)back:(id)sender {
	
//[self presentViewController:self.presentingViewController animated:YES completion:nil];
	
}
@end
