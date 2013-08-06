//
//  ViewController.m
//  Spotifycast
//
//  Created by Rob Skillington on 5/08/13.
//  Copyright (c) 2013 Pine Street Apps. All rights reserved.
//

#import "ViewController.h"
#import "OCFWebServer.h"
#import "SpotifyService.h"

@interface ViewController ()

@property (nonatomic, strong) OCFWebServer *server;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.server = [OCFWebServer new];
    
    // Add a request handler for every possible GET request
    
    [self.server addDefaultHandlerForMethod:@"GET"
                               requestClass:[OCFWebServerRequest class]
                               processBlock:^void(OCFWebServerRequest *request,
                                                  OCFWebServerResponseBlock respondWith) {
                                   
                                   // Create your response and pass it to respondWith(...)
                                   respondWith([OCFWebServerDataResponse responseWithHTML:@"Hello World"]);
                                   
                               }];
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
        // Run the server on port 8080
        [self.server runWithPort:8888];
        
    });
}

- (void)viewDidAppear:(BOOL)animated {
    // Show spotify login controller
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
