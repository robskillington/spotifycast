//
//  SpotifyService.m
//  Spotifycast
//
//  Created by Rob Skillington on 5/08/13.
//  Copyright (c) 2013 Pine Street Apps. All rights reserved.
//

#import "SpotifyService.h"
#import "SpotifyApplicationKey.h"

@interface SpotifyService() <SPSessionDelegate>

@property (nonatomic, strong) SPSession *session;
@property (nonatomic, strong) SPPlaybackManager *playbackManager;
@property (nonatomic, copy) NSString *cachedAccountName;

@end

@implementation SpotifyService

+ (SpotifyService *)sharedService {
	static SpotifyService *spotifyService = nil;
	
	@synchronized (self) {
		if (!spotifyService) {
			spotifyService = [SpotifyService new];
        }
	}
    
    return spotifyService;
}

- (id)init {
    self = [super init];
    if (self) {
		NSError *error = nil;
		[SPSession initializeSharedSessionWithApplicationKey:[SpotifyApplicationKey key]
												   userAgent:@"com.pinestapps.Spotifycast"
											   loadingPolicy:SPAsyncLoadingManual
													   error:&error];
        
		self.session = [SPSession sharedSession];
		self.session.delegate = self;
		self.playbackManager = [[SPPlaybackManager alloc] initWithPlaybackSession:self.session];
    }
    return self;
}

- (BOOL)loggedIn {
	return self.session.connectionState == SP_CONNECTION_STATE_LOGGED_IN
        || self.session.connectionState == SP_CONNECTION_STATE_OFFLINE;
}

- (SPLoginViewController *)loginController {
	SPLoginViewController *loginController = [SPLoginViewController loginControllerForSession:self.session];
	loginController.allowsCancel = YES;
    return loginController;
}

@end
