//
//  ShopLayer.m
//  HampsterDance
//
//  Created by John Wilson on 11/15/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ShopLayer.h"
#import "MenuLayer.h"

@implementation ShopLayer

-(id) init{
	if( (self=[super init] )) {
        CCLabelTTF* greatest = [CCLabelTTF labelWithString:@"Shop Layer" fontName:PBJT_FONT1 fontSize:20];
        greatest.position = ccp(280, 249);
        ccColor3B green = {154, 255, 56};
        [greatest setColor:green];
        [self addChild:greatest];
        
        
        // CCLabelTTF *timeTrailLabel = [CCLabelTTF labelWithString:@"Time Trail" fontName:@"AppleGothic" fontSize:20];
        // CCMenuItemLabel *timeTrailerButton = [CCMenuItemLabel itemWithLabel:timeTrailLabel target:self selector:@selector(timeTrailTouched:)];
        CCSprite *sprite = [CCSprite spriteWithFile:@"Icon-72.png"];
        CCSprite *sprite2 = [CCSprite spriteWithFile:@"Icon-72.png"];
        CCSprite *sprite3 = [CCSprite spriteWithFile:@"Icon-72.png"];
        
        CCMenuItemSprite *mainMenuButton = [CCMenuItemSprite itemFromNormalSprite:sprite selectedSprite:sprite2 disabledSprite:sprite3 target:self selector:@selector(mainMenuButtonTouched:)];
        mainMenuButton.position = ccp(220, 140);
        
        CCMenu *menu = [CCMenu menuWithItems:mainMenuButton, nil];
        menu.position = CGPointZero;
        [self addChild:menu];
        
    }
    return self;
}

-(void)mainMenuButtonTouched:(CCMenuItem*)sender{
    
    
    [[CCDirector sharedDirector] replaceScene:[MenuLayer node]];
}

@end
