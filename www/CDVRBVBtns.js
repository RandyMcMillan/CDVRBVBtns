/* MIT licensed */
// (c) 2015 Randy McMillan, RandyMcMillan.net
//
//  ___FILEBASENAME___ Template Created Aug 2 2015
//  Copyright 2015 @RandyMcMillan

//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___ORGANIZATIONNAME___ ___YEAR___. All rights reserved.



/*global cordova, module*/

module.exports = {

initListener: function (id,upBlock,downBlock) {

    cordova.exec("CDVRBVBtns.initListener",id,upBlock,downBlock);

}

startListen: function (id,upBlock,downBlock) {

    cordova.exec("CDVRBVBtns.startListener",id,upBlock,downBlock);
    
}

stopListen: function (id,upBlock,downBlock) {

    cordova.exec("CDVRBVBtns.stopListener",id,upBlock,downBlock);
    
}



    greet: function (name, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "Hello", "greet", [name]);
    }


};
