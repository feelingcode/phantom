//
//  BankingSourceCollectionController.m
//  InvisibleHand
//
//  Created by Jing Xie on 6/29/17.
//  Copyright © 2017 ZK. All rights reserved.
//

#import "BankingSourceCollectionController.h"
#import "ProviderLoginViewController.h"

@interface  BankingSourceCollectionController()
	@property NSArray *bankLogos;
@end

@implementation BankingSourceCollectionController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	_bankLogos = [NSArray arrayWithObjects:@"chase.png", @"citi.png", @"charles_schwab.png", @"boa.png", @"CapitalOne.png", @"Wells_Fargo.png", nil];
	
	// need to always append a plus view to allow adding new data sources
	self.collectionView.backgroundColor = [UIColor whiteColor];
	
}



- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
	return _bankLogos.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
	static NSString *identifier = @"Cell";
	
	UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
	
	UIImageView *bankImageView = (UIImageView *)[cell viewWithTag:100];
	bankImageView.image = [UIImage imageNamed:[_bankLogos objectAtIndex:indexPath.row]];
	
	return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
	
	UICollectionViewCell *cell = [collectionView cellForItemAtIndexPath:indexPath];
	NSLog(@"Touched cell %@ at indexPath %ld", cell, (long)indexPath.row);
	
	// ITF, we will generate a pre-master key for the selected bank, and then segue to a view that displays the corresponding login UI.
	
	
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	if ([segue.identifier isEqualToString:@"showLogin"]) {
		NSArray *indexPaths = [self.collectionView indexPathsForSelectedItems];
		ProviderLoginViewController *destViewController = segue.destinationViewController;
		NSIndexPath *indexPath = [indexPaths objectAtIndex:0];
		destViewController.bankName = [_bankLogos objectAtIndex:indexPath.row];
		[self.collectionView deselectItemAtIndexPath:indexPath animated:NO];
	}
}



@end
