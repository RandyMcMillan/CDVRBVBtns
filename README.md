#CDVRBVBtns Cordova Plugin
<Hr>

###Usage:
###Example
##### add to onDeviceReady:

    onDeviceReady: function() {
        app.receivedEvent('deviceready');
        
        var success = function(message) {
            alert(message);
        }
        
        var failure = function() {
            alert("Error calling Hello Plugin");
        }
        
        var upBlock = function(){}
        
        var downBlock = function(){}
        
        
        //hello.greet("World", success, failure);
        var array = ["TEST1","TEST2","TEST3"];
        cdvrbvbtns.startListener(array,success,failure);

    },
    // Update DOM on a Received Event
    receivedEvent: function(id) {
        var parentElement = document.getElementById(id);
        var listeningElement = parentElement.querySelector('.listening');
        var receivedElement = parentElement.querySelector('.received');

        listeningElement.setAttribute('style', 'display:none;');
        receivedElement.setAttribute('style', 'display:block;');

        console.log('Received Event: ' + id);
    }
	};

	app.initialize();

