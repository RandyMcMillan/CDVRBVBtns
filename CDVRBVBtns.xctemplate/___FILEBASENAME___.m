//  Created by Jesse MacFadyen on 10-05-29.
//  Copyright 2010 Nitobi. All rights reserved.
//

#import "___FILEBASENAME___.h"
#import <Cordova/CDVViewController.h>
#import <AVFoundation/AVFoundation.h>
#import "___FILEBASENAME____JS.h"

@implementation ___FILEBASENAME___

@synthesize ___FILEBASENAME___;

- (void)initListener:(NSMutableArray *)arguments withDict:(NSMutableDictionary *)options
{

    NSLog(@"initListener");
    RBVolumeButtons *buttonListener = [[[RBVolumeButtons alloc] init] autorelease];
    self.buttonListener = buttonListener;

}
- (void)startListen:(NSMutableArray *)arguments withDict:(NSMutableDictionary *)options	// args: url
{
	/* setting audio session category to "Playback" (since iOS 6) */
	AVAudioSession	*audioSession		= [AVAudioSession sharedInstance];
	NSError			*setCategoryError	= nil;
	BOOL			ok = [audioSession setCategory:AVAudioSessionCategoryPlayback error:&setCategoryError];

	if (!ok) {
		NSLog(@"Error setting AVAudioSessionCategoryPlayback: %@", setCategoryError);
	}

	if (self.___FILEBASENAME___ == nil) {
#if __has_feature(objc_arc)
			self.___FILEBASENAME___ = [[___FILEBASENAME___ViewController alloc] initWithScale:NO];
#else
			self.___FILEBASENAME___ = [[[___FILEBASENAME___ViewController alloc] initWithScale:NO] autorelease];
#endif
		self.___FILEBASENAME___.delegate			= self;
		self.___FILEBASENAME___.orientationDelegate = self.viewController;
	}

	/* // TODO: Work in progress
	 *   NSString* strOrientations = [ options objectForKey:@"supportedOrientations"];
	 *   NSArray* supportedOrientations = [strOrientations componentsSeparatedByString:@","];
	 */
   
    
    NSString *upBlock = (NSString *)[arguments objectAtIndex:0];
	NSString *downBlock = (NSString *)[arguments objectAtIndex:1];
    NSLog(@" upBlock - %@, downBlock - %@",upBlock,downBlock);

    for (int i=0; i<[arguments count]; i++) {
        
        NSLog(@"arguments objectAtIndex:%d = %@",i,[arguments objectAtIndex:i]);
        //NSLog(@"arguments pop = %@",[arguments pop]);
        
    }
    
    NSString	*callbackId		= [arguments pop];
    NSLog(@"callBackId = %@",callbackId);
	NSString	*objectAtIndex0 = [arguments objectAtIndex:0];
    
	CDVViewController	*mvc___FILEBASENAME___ = (CDVViewController *)[super viewController];
	//CDVPluginResult		*result;

    
    counter = 0;
    
    //RBVolumeButtons *buttonListener = [[[RBVolumeButtons alloc] init] autorelease];
    //self.buttonListener = buttonListener;
    
    self.buttonListener.upBlock = ^{
        counter++;
        
        NSLog(@"objectAtIndex:%@ %i",[arguments objectAtIndex:0],counter);
        //[counterLabel setText:[NSString stringWithFormat:@"%i",counter]];
        
            //NSString *jsString = k___FILEBASENAME___INIT;
            NSString *jsString = [NSString stringWithFormat:@"%@('%d');",[arguments objectAtIndex:0],counter];
            [mvc___FILEBASENAME___.webView stringByEvaluatingJavaScriptFromString:jsString];
            //result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"Success! const k___FILEBASENAME___INIT was evaluated by webview!"];
            //[self writeJavascript:[result toSuccessCallbackString:callbackId]];
        
    };
    
    
    self.buttonListener.downBlock = ^{
        counter--;
        
        //[counterLabel setText:[NSString stringWithFormat:@"%i",counter]];
        NSLog(@"downBlock %i",counter);
    };

    
    
	if ([objectAtIndex0 isEqualToString:[arguments objectAtIndex:0]]) {
		//NSString *jsString = k___FILEBASENAME___INIT;
		NSString *jsString = [NSString stringWithFormat:@"%@('%d');",[arguments objectAtIndex:0],counter];
		[mvc___FILEBASENAME___.webView stringByEvaluatingJavaScriptFromString:jsString];
		//result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"Success! const k___FILEBASENAME___INIT was evaluated by webview!"];
		//[self writeJavascript:[result toSuccessCallbackString:callbackId]];
	} else { NSLog(@"[arguments objectAtIndex:0] = %@",[arguments objectAtIndex:0]);}

    
    
    //	[self.viewController presentModalViewController:___FILEBASENAME___ animated:YES];
	//[self.___FILEBASENAME___ loadURL:url];
}

- (void)stopListen:(NSMutableArray *)arguments withDict:(NSMutableDictionary *)options
{


    NSLog(@"stopListen");
    [self.buttonListener stopStealingVolumeButtonEvents];

}


#if !__has_feature(objc_arc)
	- (void)dealloc
	{
		self.___FILEBASENAME___ = nil;

		[super dealloc];
	}

#endif

@end
