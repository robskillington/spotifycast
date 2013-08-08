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
    
//    [self.server addDefaultHandlerForMethod:@"GET"
//                               requestClass:[OCFWebServerRequest class]
//                               processBlock:^void(OCFWebServerRequest *request,
//                                                  OCFWebServerResponseBlock respondWith) {
//                                   
//                                   if (OCFWebServerRequest.url.) {
//                                   
//                                   NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
//                                                                        pathForResource:@"song"
//                                                                        ofType:@"mp3"]];
//                            
//                                   NSData *data = [NSData dataWithContentsOfURL:url];
//                                   
//                                   respondWith([OCFWebServerDataResponse responseWithData:data contentType:@"audio/mpeg"]);
//                                       
//                                   } else if ([OCFWebServerRequest.url.path == '']){
//                                    
//                                   NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
//                                                                        pathForResource:@"index"
//                                                                        ofType:@"html"]];
//                                   
//                                   NSData *html = [NSData dataWithContentsOfURL:url];
//                                   
//                                   
//                                   respondWith([OCFWebServerDataResponse responseWithData:html contentType:@"text/html"]);
//                                   }
//                               }];
    
    [self.server addHandlerForMethod:@"GET"
                           path:@"/"
                   requestClass:[OCFWebServerRequest class]
                   processBlock:^void(OCFWebServerRequest* request,
                                      OCFWebServerResponseBlock respondWith) {
                       
                       NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
                                                            pathForResource:@"index"
                                                            ofType:@"html"]];
                       
                       NSData *html = [NSData dataWithContentsOfURL:url];
                       
                       
                       respondWith([OCFWebServerDataResponse responseWithData:html contentType:@"text/html"]);
                   }];
    
    [self.server addHandlerForMethod:@"GET"
                                path:@"/audio"
                        requestClass:[OCFWebServerRequest class]
                        processBlock:^void(OCFWebServerRequest* request,
                                           OCFWebServerResponseBlock respondWith) {
                            
                            NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
                                                                 pathForResource:@"song"
                                                                 ofType:@"mp3"]];
                            
                            NSData *data = [NSData dataWithContentsOfURL:url];
                            
                            
                            respondWith([OCFWebServerDataResponse responseWithData:data contentType:@"audio/mpeg"]);
                        }];

    
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
        // Run the server on port 9999
        [self.server runWithPort:9999];
        
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
