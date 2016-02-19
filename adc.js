var b = require('octalbonescript'); //load the library
console.log("starting ADC script...")
  // no pinmode is required for analogRead as those pins are dedicated.
var pin = 'P9_33'; //the pin to operate on

var readADC = function() {
  b.analogRead(pin, function(err, value) {
    if (err) {
      console.error(err.message);
      return;
    }
    console.log('Analog Value: ' + value); // value is floating point number between 0 and 1.
    console.log('Voltage: ' + value * 1.8 + ' V')
  });
};

setInterval(readADC, 3000);
