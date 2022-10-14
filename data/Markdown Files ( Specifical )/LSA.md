# LSA ( Line Sensor Array ) #

LSA has a set of LED's which emit light and after reflection, the light is absorbed by photo diode. Now there is a catch in the reflection part, the reflection percentage are not same for ehite and black surfaces and then this becomes a differentiating factor.

- Light from LED after reflecting from surface falls on the reverse biased photodiode 
- Should be kept close to the ground 
- Photo diode should be surrounded by a shield to minimize effect of ambient light 

## IC LM324 ##

14 pin IC consisting of four operational amplifiers ( OP-amps ) in a single package 
- OP-amps is a high gain amplifier 
- used to amplify current with constant voltage, we need to increase the significance of very small current at a photo diode 
- 4 amplified outputs are RAW LSA SENSOR values from about 400 ( black ) to 2000 ( white ) 
- mapped from 0 ( black ) to 1000 ( white ) for convinience 

## Defining constraints ##
- CONSTRAINT_LSA_LOW - 0
- CONSTRAINT_LSA_HIGH - 1000

## Actual LSA sensor ##
![Screenshot 2022-08-20 013348](https://user-images.githubusercontent.com/104309685/185698733-c4bc8f1b-d493-4b09-8cf5-c2390637576b.png)

## LM324 in LSA ##
![Screenshot 2022-08-20 013549](https://user-images.githubusercontent.com/104309685/185698888-17865876-6d51-4092-a9f8-6f8fece4c4e2.png)
