//
//  SpirteViewController.m
//  SpirteWalkthrough
//
//  Created by twer on 8/18/14.
//  Copyright (c) 2014 Jun Lee. All rights reserved.
//

#import "SpirteViewController.h"
#import <SpriteKit/SpriteKit.h>
#import "HelloScene.h"

@interface SpirteViewController ()

@end

@implementation SpirteViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    SKView *spriteView = (SKView *) self.view;
    spriteView.showsDrawCount = YES;
    spriteView.showsNodeCount = YES;
    spriteView.showsFPS = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
    HelloScene *hello = [[HelloScene alloc] initWithSize:CGSizeMake(768, 1024)];
    SKView *spriteView = (SKView *) self.view;
    [spriteView presentScene:hello];
}

@end
