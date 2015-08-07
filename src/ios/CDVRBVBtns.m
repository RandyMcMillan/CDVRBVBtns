//  Created by Jesse MacFadyen on 10-05-29.
//  Copyright 2010 Nitobi. All rights reserved.
//

/* //Old Triggers
 
 
 Initialize the button listener:
 `<button onclick="cordova.exec('___FILEBASENAME___.initListener','id','upBlock','downBlock');">Click to initListen!</button>`
 
 Start listening and assign functions to be triggered with Volume buttons
 `<button onclick="cordova.exec('___FILEBASENAME___.startListen','id','upBlock','downBlock');">Click to startListen!</button>`
 
 Stop listening to Volume buttons and release back to iOS
 `<button onclick="cordova.exec('___FILEBASENAME___.stopListen','id', 'upBlock','downBlock');">Click to stopListen!</button>`
 
 */


#import "CDVRBVBtns.h"
#import <Cordova/CDVViewController.h>
#import <AVFoundation/AVFoundation.h>
#import "CDVRBVBtns_JS.h"

@implementation CDVRBVBtns


- (void)initListener:(CDVInvokedUrlCommand*)command
//- (void)initListener:(NSMutableArray *)arguments withDict:(NSMutableDictionary *)options
{
    NSLog(@"%@", NSStringFromSelector(_cmd));
	RBVolumeButtons *buttonListener = /*[*/[[RBVolumeButtons alloc] init] /*autorelease]*/;
	self.buttonListener = buttonListener;
}

- (void)startListener:(CDVInvokedUrlCommand*)command

//- (void)startListen:(NSMutableArray *)arguments withDict:(NSMutableDictionary *)options	// args: url
{
    NSLog(@"%@", NSStringFromSelector(_cmd));
	/* setting audio session category to "Playback" (since iOS 6) */
	AVAudioSession	*audioSession		= [AVAudioSession sharedInstance];
	NSError			*setCategoryError	= nil;
	BOOL			ok = [audioSession setCategory:AVAudioSessionCategoryPlayback error:&setCategoryError];

	if (!ok) {
		NSLog(@"Error setting AVAudioSessionCategoryPlayback: %@", setCategoryError);
	}

	NSString	*upBlock	= (NSString *)[[command arguments] objectAtIndex:0];
	NSString	*downBlock	= (NSString *)[[command arguments] objectAtIndex:1];
	NSLog(@" upBlock - %@, downBlock - %@", upBlock, downBlock);

	for (int i = 0; i < [[command arguments] count]; i++) {
		NSLog(@"LINE:55 arguments objectAtIndex:%d = %@", i, [[command arguments] objectAtIndex:i]);
	}

	// self.callBackId		= [arguments pop];
	// NSLog(@"callBackId = %@",self.callBackId);
	self.objectAtIndex0 = [[command arguments] objectAtIndex:0];
	NSLog(@"LINE: 62 objectAtIndex0 = %@", self.objectAtIndex0);
	self.objectAtIndex1 = [[command arguments] objectAtIndex:1];
	NSLog(@"LINE: 64 objectAtIndex1 = %@", self.objectAtIndex1);
	self.objectAtIndex2 = [[command arguments] objectAtIndex:2];
	NSLog(@"LINE: 66 objectAtIndex2 = %@", self.objectAtIndex2);
	CDVViewController *mvc___FILEBASENAME___ = (CDVViewController *)[super viewController];
	// CDVPluginResult		*result;

	counter = 0;

	 RBVolumeButtons *buttonListener = /*[*/[[RBVolumeButtons alloc] init] /*autorelease]*/;
	 self.buttonListener = buttonListener;

	self.buttonListener.upBlock =^{
		counter++;

		NSLog (@"LINE:78 objectAtIndex:%@ %i", [[command arguments] objectAtIndex:0], counter);
		 [counterLabel setText:[NSString stringWithFormat:@"%i",counter]];

		// NSString *jsString = k___FILEBASENAME___INIT;
		NSString *jsString = [NSString stringWithFormat:@"%@('%d');", [[command arguments]//objectAtIndex:1], counter];
           objectAtIndex:0],counter];
		
        [(UIWebView *)mvc___FILEBASENAME___.webView stringByEvaluatingJavaScriptFromString:jsString];
        
        // result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"Success! const k___FILEBASENAME___INIT was evaluated by webview!"];
		// [self writeJavascript:[result toSuccessCallbackString:callbackId]];
	};

	self.buttonListener.downBlock =^{
		counter--;

		// [counterLabel setText:[NSString stringWithFormat:@"%i",counter]];
		NSLog (@"downBlock %i", counter);

		NSLog (@"objectAtIndex:%@ %i", [[command arguments] objectAtIndex:1], counter);
		// [counterLabel setText:[NSString stringWithFormat:@"%i",counter]];

		// NSString *jsString = k___FILEBASENAME___INIT;
		NSString *jsString = [NSString stringWithFormat:@"%@('%d');", [[command arguments] objectAtIndex:1], counter];
		[(UIWebView *)mvc___FILEBASENAME___.webView stringByEvaluatingJavaScriptFromString:jsString];
		// result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"Success! const k___FILEBASENAME___INIT was evaluated by webview!"];
		// [self writeJavascript:[result toSuccessCallbackString:callbackId]];
	};

	//	[self.viewController presentModalViewController:___FILEBASENAME___ animated:YES];
	// [self.___FILEBASENAME___ loadURL:url];
}

- (void)stopListen:(NSMutableArray *)arguments withDict:(NSMutableDictionary *)options
{
    NSLog(@"%@", NSStringFromSelector(_cmd));
	[self.buttonListener stopStealingVolumeButtonEvents];
	self.buttonListener = nil;
	// RBVolumeButtons *buttonListener = [[[RBVolumeButtons alloc] init] autorelease];
	// self.buttonListener = buttonListener;

	// self.buttonListener.upBlock = nil;
	// self.buttonListener.downBlock = nil;
	// self.buttonListener = nil;
}

- (void)greet:(CDVInvokedUrlCommand*)command
{
    NSLog(@"%@", NSStringFromSelector(_cmd));

    NSString* callbackId = [command callbackId];
    NSString* name = [[command arguments] objectAtIndex:0];
    NSString* msg = [NSString stringWithFormat: @"Hello, %@", name];

    CDVPluginResult* result = [CDVPluginResult
                               resultWithStatus:CDVCommandStatus_OK
                               messageAsString:msg];

    //[self success:result callbackId:callbackId];
    [self.commandDelegate sendPluginResult:result callbackId:callbackId];
    
}

#if !__has_feature(objc_arc)
	- (void)dealloc
	{
		[super dealloc];
	}

#endif

@end
