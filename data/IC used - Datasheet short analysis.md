# MCP3204/3208 #
2.7V 4-Channel/8-Channel 12-Bit A/D Converters
with SPI Serial Interface

## Feautures ## 
- 12-bit resolution
-  ± 1 LSB max INL (MCP3204/3208-B) ( Error limit )
-  100 ksps max. sampling rate at VDD = 5V

![image](https://user-images.githubusercontent.com/104309685/187085331-a5e159eb-15d5-471c-98c9-2fdc15b89a0a.png)                            ![image](https://user-images.githubusercontent.com/104309685/187085377-8f8fe5a9-eef4-4920-b205-908eaf62ac62.png)

## Electrical specifications ##
![image](https://user-images.githubusercontent.com/104309685/187085454-314f68dc-1d15-482f-bf95-ebed09e52ea2.png)

We have 2 grounds :
- DGND (Digital Ground)
- AGND (Analog Ground) : for refrence voltage 

## Waveform rough analysis : 

![image](https://user-images.githubusercontent.com/104309685/187085648-65e6b905-bef2-4f88-aeca-a88d7f4b13e0.png)
  
- At positive edge -> Read 
- At negative edge -> Change 

### Analog inputs :
![image](https://user-images.githubusercontent.com/104309685/187085944-13efc611-6671-403b-b941-65f8e58a5f4d.png)

## ADC code :
![image](https://user-images.githubusercontent.com/104309685/187086029-ed4c2ac4-6c40-404f-aea2-60f9b1f16176.png)

The value should be approximated to the nearest integer 
- talking about why 4096 : IC has 12 bit resolution so this is the value of 2(12,pow)

## SERIAL COMMUNICATIONS

- Chip select ( active at low )
- vdd powersupply 2.7+ v 
- Start bit -> signal bit -> 3 data bits 

- In output fist null bit then b11 to b0, we have to capture this 
- Then we make the cs value high to stop the readings 
- Hi z means this is nor 1 nor 0, it is high impedence 

![image](https://user-images.githubusercontent.com/104309685/187086458-378edcfc-b1df-4eaa-94fb-5e4d17469fb9.png)


## Additional features of MCP3204/3208
- If we don't change CS value to high again it will give reverse bits ( bo to b11 )
- This feature is given where circuits need to specifiaclly read in a order so this becomes helpful in such cases as the user can give the value in both orders and the chip selects the order on its own 
![image](https://user-images.githubusercontent.com/104309685/187086498-0d1ad4b2-8300-41c2-aea9-2a26216619fc.png)
   
- We can either use single channel or also one channel to 2 sensors (We will be using single channe for our project ) 
   
   
## To be remembered while coding according to the datasheet 
- Start bit should be 1 and single bit should also be 1 ( for our purpose this is required )
- Clk should be high in ideal condition and then in every falling edge data should be changed. 
   
   
