/*global cordova, module*/

var exec = require('cordova/exec');
module.exports = {

initListener: function (name, successCallback, errorCallback) {

   cordova.exec(successCallback, errorCallback, "CDVRBVBtns", "initListener", [name]);

},

startListener: function (name, successCallback, errorCallback) {

   cordova.exec(successCallback, errorCallback, "CDVRBVBtns", "startListener", [name]);
    
},

stopListener: function (name, successCallback, errorCallback) {

   cordova.exec(successCallback, errorCallback, "CDVRBVBtns", "stopListener", [name]);
    
},

greet: function (name, successCallback, errorCallback) {

   cordova.exec(successCallback, errorCallback, "CDVRBVBtns", "greet", [name]);
    
}

}



