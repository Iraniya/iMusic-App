//
//  SongsViewController.h
//  musicApp
//
//  Created by Jaydeep Solanki on 05/02/17.
//  Copyright © 2017 iraniya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>


@interface SongsViewController : UITableViewController <UITableViewDelegate,UITableViewDataSource>

@property (strong,nonatomic) UITableView *songsTableView;
@property (strong,nonatomic) UITableView *albumTableView;

@end
