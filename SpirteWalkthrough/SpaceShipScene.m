//
//  SpaceShipScene.m
//  SpirteWalkthrough
//
//  Created by twer on 8/18/14.
//  Copyright (c) 2014 Jun Lee. All rights reserved.
//

#import "SpaceShipScene.h"

@interface SpaceShipScene()
@property BOOL contentCreated;
@end

@implementation SpaceShipScene

-(void) didMoveToView:(SKView *)view{
    if (!self.contentCreated)
    {
        [self createSceneContents];
        self.contentCreated = YES;
    }
}

- (void)createSceneContents
{
    self.backgroundColor = [SKColor blackColor];
    self.scaleMode = SKSceneScaleModeAspectFit;
}

@end
