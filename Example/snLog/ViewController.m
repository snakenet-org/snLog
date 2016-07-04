//
//  ViewController.m
//  snLog
//
//  Created by Marc Fiedler on 07/04/2016.
//  Copyright (c) 2016 Marc Fiedler. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [Log e: @"Main" Text: @"Error!! Something went wrong"];
    [Log w: @"snakeNet" Text: @"Oh well, that happened...."];
    [Log i: @"somewhere" Text: @"Just FYI!"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
