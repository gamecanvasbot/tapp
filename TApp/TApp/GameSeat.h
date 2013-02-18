//
//  GameSeat.h
//  gamepalace
//
//  Created by Amit Upadhyay on 12/15/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@class CPImages;

@interface GameSeat : CCNode {
    CPImages *photo;
    
    CCLabelTTF *name, *status;
    CCSprite *nameBG, *statusBG, *frame;
}

-(void)setName:(NSString*)n photo:(NSString*)url;
-(void)setStatus:(NSString*)s;

@end
