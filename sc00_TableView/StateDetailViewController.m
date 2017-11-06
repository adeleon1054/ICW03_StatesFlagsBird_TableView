//
//  StateDetailViewController.m
//  sc00_TableView
//
//  Created by user on 11/1/17.
//  Copyright © 2017 user. All rights reserved.
//

#import "StateDetailViewController.h"
#import "StateInfo.h"

@interface StateDetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *stateFlagImage;
@property (weak, nonatomic) IBOutlet UILabel *stateDetailMotto;
@property (weak, nonatomic) IBOutlet UILabel *stateDetailCapital;
@property (weak, nonatomic) IBOutlet UILabel *stateDetailPopulation;
@property (weak, nonatomic) IBOutlet UILabel *stateBirdName;
@property (weak, nonatomic) IBOutlet UIImageView *stateBirdImage;

@end

@implementation StateDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _stateDetailCapital.text = [NSString stringWithFormat:@"Capital: %@", _currentState.capitalCity];
    _stateDetailMotto.text = [NSString stringWithFormat:@"Motto: %@", _currentState.motto];
    _stateFlagImage.image = _currentState.flag;
    _stateBirdName.text = [NSString stringWithFormat:@"Bird: %@", _currentState.bird];
    _stateBirdImage.image = _currentState.birdImage;
    _stateDetailPopulation.text = [NSString stringWithFormat:@"Population: %@", _currentState.population];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
