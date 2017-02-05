//
//  SongsViewController.m
//  musicApp
//
//  Created by Jaydeep Solanki on 05/02/17.
//  Copyright © 2017 iraniya. All rights reserved.
//

#import "SongsViewController.h"

@interface SongsViewController ()

@end

@implementation SongsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    MPMediaQuery *songsQuery = [MPMediaQuery songsQuery];
    NSArray *songs = [songsQuery items];
    NSLog(@"%@",songs);
    return [songs count];
    
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifire = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifire forIndexPath:indexPath];
    
    MPMediaQuery *songsQuery = [MPMediaQuery songsQuery];
    NSArray *songs = [songsQuery items];
    
    MPMediaItem *rowItem = [songs objectAtIndex:indexPath.row];

    cell.textLabel.text = [rowItem valueForProperty:MPMediaItemPropertyTitle];
    cell.detailTextLabel.text = [rowItem valueForProperty:MPMediaItemPropertyArtist];
    
    return cell;
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
