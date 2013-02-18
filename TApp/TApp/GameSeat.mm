//
//  GameSeat.mm
//  gamepalace
//
//  Created by Amit Upadhyay on 12/15/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "GameSeat.h"
#import "CPUniversal.h"
#import "CPImages.h"

@implementation GameSeat
-(id)init {
    if ((self = [super init])) {
        
        frame = [CPUniversal spriteFromFile:@"poker-frame" ext:@"png"];
        frame.opacity = 200;
        [self addChild:frame];
        
        photo = [CPImages casinoPhoto];
//        [photo setURL:p];
        [self addChild:photo];
        
        nameBG = [CPUniversal spriteFromFile:@"label-bg" ext:@"png"];
        nameBG.position = [CPUniversal pointForIPad:ccp(0, 46) andIPhone:ccp(0, 30)];
        nameBG.opacity = 200;
        [self addChild:nameBG];

        statusBG = [CPUniversal spriteFromFile:@"label-bg" ext:@"png"];
        statusBG.flipY = YES;
        statusBG.position = [CPUniversal pointForIPad:ccp(0, -46) andIPhone:ccp(0, -30)];
        statusBG.opacity = 200;
        [self addChild:statusBG];

        name = [CCLabelTTF labelWithString:@"" fontName:@"Helvetica-Bold" fontSize:[CPUniversal floatForIPad:16 andIPhone:12]];
        name.position = ccp(nameBG.contentSize.width/2, nameBG.contentSize.height/2);
        name.color = ccc3(255, 255, 255);
        [nameBG addChild:name];

        status = [CCLabelTTF labelWithString:@"" fontName:@"Helvetica-Bold" fontSize:[CPUniversal floatForIPad:16 andIPhone:12]];
        status.position = ccp(statusBG.contentSize.width/2, statusBG.contentSize.height/2);
        status.color = ccc3(255, 255, 255);
        [statusBG addChild:status];

    }
    return self;
}

-(void)setName:(NSString*)n photo:(NSString*)url {
    [name setString:n];
    [photo setURL:url];
}

-(void)setStatus:(NSString*)s {
    [status setString:s];
}

@end
