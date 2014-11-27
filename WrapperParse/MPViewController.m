//
//  MPViewController.m
//  WrapperParse
//
//  Created by BestDev on 11/15/14.
//  Copyright (c) 2014 BestDev. All rights reserved.
//

#import "MPViewController.h"

@interface MPViewController ()

@end

@implementation MPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	[webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://app.mproving.com"]]];
	
	[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(loadURL:) name:@"LoadUrl" object:nil];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)loadURL:(NSNotification*)notification
{
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[[notification.object objectForKey:@"mproving"] objectForKey:@"url"]]]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
