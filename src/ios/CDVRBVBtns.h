//  Created by Jesse MacFadyen on 10-05-29.
//  Copyright 2010 Nitobi. All rights reserved.
//  Copyright 2012, Randy McMillan
//
//  ___FILEBASENAME___ Template Created Jan 7 2013
//  Copyright 2013 @RandyMcMillan

//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___ORGANIZATIONNAME___ ___YEAR___. All rights reserved.

#import <Cordova/CDVPlugin.h>
#import <MediaPlayer/MediaPlayer.h>
#import <AudioToolbox/AudioToolbox.h>
#import "RBVolumeButtons.h"

@interface CDVRBVBtns : CDVPlugin {
	float				launchVolume;
	IBOutlet UILabel	*counterLabel;
	int					counter;
}

@property (nonatomic, strong) RBVolumeButtons	*buttonListener;
@property (nonatomic, strong) NSString			*callBackId;
@property (nonatomic, strong) NSString			*objectAtIndex0;
@property (nonatomic, strong) NSString			*objectAtIndex1;
@property (nonatomic, strong) NSString			*objectAtIndex2;

- (void)initListener:(NSMutableArray *)arguments withDict:(NSMutableDictionary *)options;
- (void)startListen:(NSMutableArray *)arguments withDict:(NSMutableDictionary *)options;
- (void)stopListen:(NSMutableArray *)arguments withDict:(NSMutableDictionary *)options;
- (void) greet:(CDVInvokedUrlCommand*)command;

@end
