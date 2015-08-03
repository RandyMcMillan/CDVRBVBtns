/* MIT licensed */
// (c) 2010 Jesse MacFadyen, Nitobi
//
//  ___FILEBASENAME___ Template Created Jan 7 2013
//  Copyright 2013 @RandyMcMillan

//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___ORGANIZATIONNAME___ ___YEAR___. All rights reserved.

var exec = require('cordova/exec');

module.exports = {


    initListener = function (param1,param2,param3){
    
    exec("___FILEBASENAME___.initListener",id,upBlock,downBlock);
        
        
    }
   
    startListen = function(id,upBlock,downBlock){
        
        cordovaRef.exec("___FILEBASENAME___.startListen", id,upBlock,downBlock);
    
    }
    
    stopListen = function(id,upBlock,downBlock){
        
        cordovaRef.exec("___FILEBASENAME___.stopListen",id,upBlock,downBlock);
    
    }
    
    

}

