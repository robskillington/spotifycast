//
//  SpotifyService.h
//  Spotifycast
//
//  Created by Rob Skillington on 5/08/13.
//  Copyright (c) 2013 Pine Street Apps. All rights reserved.
//

#import "CocoaLibSpotify.h"

@interface SpotifyService : NSObject

@property (nonatomic, readonly) BOOL loggedIn;

+ (SpotifyService *) sharedService;

- (SPLoginViewController *)loginController;

@end
