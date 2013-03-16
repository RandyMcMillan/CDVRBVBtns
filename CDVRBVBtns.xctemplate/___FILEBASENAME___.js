/* MIT licensed */
// (c) 2010 Jesse MacFadyen, Nitobi
//
//  ___FILEBASENAME___ Template Created Jan 7 2013
//  Copyright 2013 @RandyMcMillan

//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___ORGANIZATIONNAME___ ___YEAR___. All rights reserved.

(function() {
 
 var cordovaRef = window.PhoneGap || window.Cordova || window.cordova; // old to new fallbacks
 
 function ___FILEBASENAME___() {
 // Does nothing
 }
 
 
/* The interface that you will use to access functionality */
 
 ___FILEBASENAME___.prototype.initListener = function(id,upBlock,downBlock)
 {
 cordovaRef.exec("___FILEBASENAME___.initListener",id, upBlock,downBlock);
 };
 
 ___FILEBASENAME___.prototype.startListen = function(id,upBlock,downBlock)
 {
 cordovaRef.exec("___FILEBASENAME___.startListen", id,upBlock,downBlock);
 };
 
 
 ___FILEBASENAME___.prototype.stopListen = function(id,upBlock,downBlock)
 {
 cordovaRef.exec("___FILEBASENAME___.stopListen", id,upBlock,downBlock);
 };
 // Note: this plugin does NOT install itself, call this method some time after deviceready to install it
 // it will be returned, and also available globally from window.plugins.childBrowser
 ___FILEBASENAME___.install = function()
 {
 if(!window.plugins) {
 window.plugins = {};
 }
 if ( ! window.plugins.___FILEBASENAME___ ) {
 window.plugins.___FILEBASENAME___ = new ___FILEBASENAME___();
 }
 
 };
 
 
 if (cordovaRef && cordovaRef.addConstructor) {
 cordovaRef.addConstructor(___FILEBASENAME___.install);
 } else {
 console.log("___FILEBASENAME___ Cordova Plugin could not be installed.");
 return null;
 }
 
 
 })();
