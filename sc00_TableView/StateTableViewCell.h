//
//  StateTableViewCell.h
//  sc00_TableView
//
//  Created by user on 11/1/17.
//  Copyright © 2017 user. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StateTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *flagImageView;
@property (weak, nonatomic) IBOutlet UILabel *stateName;
@property (weak, nonatomic) IBOutlet UILabel *stateMotto;
@end
