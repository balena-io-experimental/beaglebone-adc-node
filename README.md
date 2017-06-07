## Analog Input with Beaglebone and Resin.io

#### **--This will only work on resin.io images downloaded after 22-09-2015--**

This example demonstrates how to read an analog voltage on a [resin.io](https://resin.io/) enabled Beaglebone board. It use node.js v6 and the [Octalbonescript](https://github.com/theoctal/octalbonescript) library.

Note: currently this does not work on Beaglebone Blue devices (7 June 2017)

The `adc.js` script just queries the analog voltage level on `P9_33` of the Beaglbone every 3 seconds and writes that value out to the console which you can see on your resin.io dashboard logs.

Expected Output:
```
07.06.17 12:26:25 (+0100) > resin-beaglebone-demo@0.1.0 prestart /usr/src/app
07.06.17 12:26:25 (+0100) > bash before-node-start.sh
07.06.17 12:26:25 (+0100)
07.06.17 12:26:25 (+0100) Starting adc.js

07.06.17 12:26:26 (+0100) > resin-beaglebone-demo@0.1.0 start /usr/src/app
07.06.17 12:26:26 (+0100) > node adc.js
07.06.17 12:26:26 (+0100)
07.06.17 12:26:30 (+0100) starting ADC script...
07.06.17 12:26:34 (+0100) Analog Value: 0.555419921875 == 0.999755859375 V
07.06.17 12:26:37 (+0100) Analog Value: 0.55615234375 == 1.0010742187500001 V
07.06.17 12:26:40 (+0100) Analog Value: 0.556640625 == 1.001953125 V
07.06.17 12:26:43 (+0100) Analog Value: 0.56005859375 == 1.00810546875 V
07.06.17 12:26:46 (+0100) Analog Value: 0.561767578125 == 1.011181640625 V
07.06.17 12:26:49 (+0100) Analog Value: 0.5634765625 == 1.0142578125000001 V
07.06.17 12:26:52 (+0100) Analog Value: 0.560302734375 == 1.008544921875 V
07.06.17 12:26:55 (+0100) Analog Value: 0.560302734375 == 1.008544921875 V
07.06.17 12:26:58 (+0100) Analog Value: 0.5615234375 == 1.0107421875 V
07.06.17 12:27:01 (+0100) Analog Value: 0.5625 == 1.0125 V
07.06.17 12:27:04 (+0100) Analog Value: 0.560791015625 == 1.009423828125 V
07.06.17 12:27:07 (+0100) Analog Value: 0.559814453125 == 1.0076660156250001 V
07.06.17 12:27:10 (+0100) Analog Value: 0.561279296875 == 1.010302734375 V
07.06.17 12:27:13 (+0100) Analog Value: 0.560791015625 == 1.009423828125 V
07.06.17 12:27:16 (+0100) Analog Value: 0.5634765625 == 1.0142578125000001 V
```
