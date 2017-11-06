//
//  StateInfo.h
//  sc00_TableView
//
//  Created by user on 11/1/17.
//  Copyright © 2017 user. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h> // needed for UIImage

@interface StateInfo : NSObject
@property (strong, nonatomic) NSString * name, *capitalCity, *motto, *bird, *population;
@property (strong, nonatomic) UIImage * flag, *birdImage;
@end
