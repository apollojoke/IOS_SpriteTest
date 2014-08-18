//
//  HelloScene.m
//  SpirteWalkthrough
//
//  Created by twer on 8/18/14.
//  Copyright (c) 2014 Jun Lee. All rights reserved.
//

#import "HelloScene.h"
#import "SpaceShipScene.h"

@interface HelloScene()
@property BOOL contentCreated;
@end

@implementation HelloScene

-(void)didMoveToView:(SKView *)view{
    if (!self.contentCreated) {
        [self createSceneContents];
        self.contentCreated = YES;
    }
}

-(void)createSceneContents{
    self.backgroundColor = [SKColor blueColor];
    self.scaleMode = SKSceneScaleModeAspectFit;
    [self addChild: [self newHelloNode]];
}
    
-(SKLabelNode *)newHelloNode{
    SKLabelNode * helloNode = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
    helloNode.name=@"helloNode";
    helloNode.text = @"痛扁小娄佳";
    helloNode.fontSize = 42;
    helloNode.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
    return helloNode;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    SKLabelNode *helloNode = (SKLabelNode *)[self childNodeWithName:@"helloNode"];
    if (helloNode != nil){
        helloNode.name = nil;
        SKAction *moveUp = [SKAction moveByX:0 y:100 duration:0.5];
        SKAction *zoom = [SKAction scaleTo:2.0 duration:0.25];
        SKAction *pause = [SKAction waitForDuration:0.5];
        SKAction *fadeAway = [SKAction fadeOutWithDuration:0.25];
        SKAction *remove = [SKAction removeFromParent];
        
        SKAction *moveSequence = [SKAction sequence:@[moveUp, zoom, pause, fadeAway, remove]];
        [helloNode runAction: moveSequence completion:^{
            SKScene *spaceShipScene = [[SpaceShipScene alloc] initWithSize:self.size];
            SKTransition *doors = [SKTransition pushWithDirection:SKTransitionDirectionLeft duration:0.5];
            [self.view presentScene:spaceShipScene transition:doors];
        }];
    }
}

@end
