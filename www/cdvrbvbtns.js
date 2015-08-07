/*global cordova, module*/

var exec = require('cordova/exec');
module.exports = {

initListener: function (name, successCallback, errorCallback) {

    //cordova.exec('CDVRBVBtns.initListener','id','upBlock','downBlock');
    //cordova.exec(successCallback,errorCallback, "CDVRBVBtns", "initListener", [name]);
    cordova.exec(successCallback, errorCallback, "CDVRBVBtns", "initListener", [name]);

},

startListener: function (array, successCallback, errorCallback) {
    
    //cordova.exec('___FILEBASENAME___.startListen','id','upBlock','downBlock');
    //cordova.exec('___FILEBASENAME___.startListen','id','upBlock','downBlock');
    cordova.exec(successCallback, errorCallback, "CDVRBVBtns", "startListener", array);
    
},


stopListener: function (name, successCallback, errorCallback) {

    //cordova.exec('___FILEBASENAME___.stopListen','id', 'upBlock','downBlock');
   cordova.exec(successCallback, errorCallback, "CDVRBVBtns", "stopListener", [name]);
    
},

greet: function (name, successCallback, errorCallback) {

   cordova.exec(successCallback, errorCallback, "CDVRBVBtns", "greet", [name]);
    
}

}




