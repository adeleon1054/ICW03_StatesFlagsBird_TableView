//
//  StatesTableViewController.m
//  sc00_TableView
//
//  Created by user on 11/1/17.
//  Copyright © 2017 user. All rights reserved.
//

#import "StatesTableViewController.h"
#import "StateInfo.h"
#import "StateTableViewCell.h"
#import "StateDetailViewController.h"

@interface StatesTableViewController ()
@property (strong, nonatomic) NSMutableArray * statesArray;
@end

@implementation StatesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    StateInfo *alabama = [[StateInfo alloc]init];
    alabama.name = @"Alabama";
    alabama.capitalCity = @"Montgomery";
    alabama.motto = @"We dare defend our rights";
    alabama.flag = [UIImage imageNamed:@"Flags/Large/alabama-flag-medium"];
    alabama.bird = @"Northern Flicker";
    alabama.birdImage = [UIImage imageNamed:@"northern_flicker_al.jpg"];
    alabama.population = @"4,858,979";
    
    StateInfo *alaska = [[StateInfo alloc]init];
    alaska.name = @"Alaska";
    alaska.capitalCity = @"Juneau";
    alaska.motto = @"North to the future";
    alaska.flag = [UIImage imageNamed:@"Flags/Large/alaska-flag-medium.png"];
    alaska.bird = @"Willow ptarmigan";
    alaska.birdImage = [UIImage imageNamed:@"willowp_tarmigan_ak.jpg"];
    alaska.population = @"738,432";
    
    StateInfo *arizona = [[StateInfo alloc]init];
    arizona.name = @"Arizona";
    arizona.capitalCity = @"Phoenix";
    arizona.motto = @"God enriches";
    arizona.flag = [UIImage imageNamed:@"Flags/Large/arizona-flag-medium.png"];
    arizona.bird = @"Cactus Wren";
    arizona.birdImage = [UIImage imageNamed:@"cactus_nedharris_az.jpg"];
    arizona.population = @"6,828,065";
    
    StateInfo *arkansas = [[StateInfo alloc]init];
    arkansas.name = @"Arkansas";
    arkansas.capitalCity = @"Little Rock";
    arkansas.motto = @"The people rule";
    arkansas.flag = [UIImage imageNamed:@"Flags/Large/arkansas-flag-medium.png"];
    arkansas.bird = @"Mockingbird";
    arkansas.birdImage = [UIImage imageNamed:@"northern_mockingbird_ar.jpg"];
    arkansas.population = @"2,978,204";
    
    
    StateInfo *california = [[StateInfo alloc]init];
    california.name = @"California";
    california.capitalCity = @"Sacramento";
    california.motto = @"Eureka";
    california.flag = [UIImage imageNamed:@"Flags/Large/california-flag-medium.png"];
    california.bird = @"California Valley Quai";
    california.birdImage = [UIImage imageNamed:@"california_quail_ca.jpg"];
    california.population = @"39,144,818";
    
    StateInfo *colorado = [[StateInfo alloc]init];
    colorado.name = @"Colorado";
    colorado.capitalCity = @"Denver";
    colorado.motto = @"Nothing without the Deity";
    colorado.flag = [UIImage imageNamed:@"Flags/Large/colorado-flag-medium.png"];
    colorado.bird = @"Lark bunting";
    colorado.birdImage = [UIImage imageNamed:@"lark_bunting_co.jpg"];
    colorado.population = @"5,456,574";
    
    StateInfo *connecticut = [[StateInfo alloc]init];
    connecticut.name = @"Connecticut";
    connecticut.capitalCity = @"Hartford";
    connecticut.motto = @"He who transplanted sustains";
    connecticut.flag = [UIImage imageNamed:@"Flags/Large/connecticut-flag-medium.png"];
    connecticut.bird = @"Robin";
    connecticut.birdImage = [UIImage imageNamed:@"american_robin_cn.jpg"];
    connecticut.population = @"3,590,886";
    
    StateInfo *delaware = [[StateInfo alloc]init];
    delaware.name = @"Delaware";
    delaware.capitalCity = @"Dover";
    delaware.motto = @"Liberty and Independence";
    delaware.flag = [UIImage imageNamed:@"Flags/Large/delaware-flag-medium.png"];
    delaware.bird = @"Blue hen chicken";
    delaware.birdImage = [UIImage imageNamed:@"blue_hen_chicken_dw.jpg"];
    delaware.population = @"945,934";
    
    StateInfo *florida = [[StateInfo alloc]init];
    florida.name = @"Florida";
    florida.capitalCity = @"Tallahassee";
    florida.motto = @"In God We Trust";
    florida.flag = [UIImage imageNamed:@"Flags/Large/florida-flag-medium.png"];
    florida.bird = @"Mockingbird";
    florida.birdImage = [UIImage imageNamed:@"northern_mockingbird_ar.jpg"];
    florida.population = @"20,271,272";
    
    StateInfo *georgia = [[StateInfo alloc]init];
    georgia.name = @"Georgia";
    georgia.capitalCity = @"Atlanta";
    georgia.motto = @"Wisdom, Justice, Moderation";
    georgia.flag = [UIImage imageNamed:@"Flags/Large/georgia-flag-medium.png"];
    georgia.bird = @"Brown thrasher";
    georgia.birdImage = [UIImage imageNamed:@"bthrasher_rockytopk_ga.jpg"];
    georgia.population = @"10,214,860";
    
    StateInfo *hawaii = [[StateInfo alloc]init];
    hawaii.name = @"Hawaii";
    hawaii.capitalCity = @"Honolulu";
    hawaii.motto = @"Ua mau ke ea o ka aina i ka pono";
    hawaii.flag = [UIImage imageNamed:@"Flags/Large/hawaii-flag-medium.png"];
    hawaii.bird = @"Nene";
    hawaii.birdImage = [UIImage imageNamed:@"nene_hi.jpg"];
    hawaii.population = @"1,431,603";
    
    StateInfo *idaho = [[StateInfo alloc]init];
    idaho.name = @"Idaho";
    idaho.capitalCity = @"Boise";
    idaho.motto = @"Let it be perpetual";
    idaho.flag = [UIImage imageNamed:@"Flags/Large/idaho-flag-medium.png"];
    idaho.bird = @"Mountain bluebird";
    idaho.birdImage = [UIImage imageNamed:@"mountain_bluebird_id.jpg"];
    idaho.population = @"1,654,930";


    _statesArray = [NSMutableArray arrayWithObjects:alabama, alaska, arizona, arkansas, california, colorado, connecticut, delaware, florida, georgia, hawaii, idaho, nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [_statesArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * cellIdentifier = @"StateInfoCellID";
    StateTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    //populate cell with data
    StateInfo * item = [_statesArray objectAtIndex:indexPath.row];
    cell.stateName.text = item.name;
    cell.stateMotto.text = item.motto;
    cell.flagImageView.image = item.flag;
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetails"])
    {
        StateDetailViewController *detailVC = [segue destinationViewController];
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        StateInfo *item = [self.statesArray objectAtIndex:myIndexPath.row];
        
        detailVC.currentState = item;
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

#pragma mark - Tabelview Color
-(void)tableView:(UITableView *)tableView willDisplayCell:(nonnull UITableViewCell *)cell forRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    UIColor *myColor = [UIColor colorWithRed: 136.0/255.0 green:203.0/255.0 blue:255.0/255.0 alpha:1.0]; [self hexStringFromColor: myColor];
    NSLog(@"%@",[self hexStringFromColor: myColor]);
    
    if(indexPath.row % 2 == 0)
        cell.backgroundColor = myColor;
    else
        cell.backgroundColor = [UIColor whiteColor];
}
    
-(NSString *)hexStringFromColor:(UIColor *)color { const CGFloat *components = CGColorGetComponents(color.CGColor); CGFloat r = components[0]; CGFloat g = components[1]; CGFloat b = components[2];
        
        return [NSString stringWithFormat:@"#%02lX%02lX%02lX", lroundf(r * 255), lroundf(g * 255), lroundf(b * 255)];
    
}




@end
