//
//  AlbumViewController.h
//  musicApp
//
//  Created by Jaydeep Solanki on 05/02/17.
//  Copyright © 2017 iraniya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface AlbumViewController : UITableViewController<UITableViewDelegate,UITableViewDataSource>
{
    NSString *albumTitle;
}

@property NSString *albumTitle;
@end
