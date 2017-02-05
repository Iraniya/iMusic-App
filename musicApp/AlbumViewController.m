//
//  AlbumViewController.m
//  musicApp
//
//  Created by Jaydeep Solanki on 05/02/17.
//  Copyright © 2017 iraniya. All rights reserved.
//

#import "AlbumViewController.h"

@interface AlbumViewController ()

@end

@implementation AlbumViewController
@synthesize albumTitle;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = albumTitle;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Segue Methods

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    AlbumViewController *detailViewController = [segue destinationViewController];
    
    MPMediaQuery *albumQuery = [MPMediaQuery albumsQuery];
    NSArray *albums = [albumQuery collections];
    
    int selectedIndex = [[self.tableView indexPathForSelectedRow]row];
    MPMediaItem *selectedItem = [ [albums objectAtIndex:selectedIndex]representativeItem];
    NSString *albumTitle = [selectedItem valueForProperty:MPMediaItemPropertyAlbumTitle];
    
    [detailViewController setAlbumTitle:albumTitle];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    MPMediaQuery *albumQuery = [MPMediaQuery albumsQuery];
    
    MPMediaPropertyPredicate *albumPredicate = [MPMediaPropertyPredicate predicateWithValue:albumTitle forProperty:MPMediaItemPropertyAlbumTitle];
    [albumQuery addFilterPredicate:albumPredicate];
    
    NSArray *albumTracks = [albumQuery items];
    
    return [albumTracks count] +1;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if([indexPath row]==0){
        return 120;
    }
    else
        return 44;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}

@end
