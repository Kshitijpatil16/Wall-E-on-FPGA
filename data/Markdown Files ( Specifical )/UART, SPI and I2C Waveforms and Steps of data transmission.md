# UART ( Universal Asynchronous Reciever Transmission ) #
Consists of :
- Start/Stop bits 
- Data bits 
- Parity bits ( optional )
High Voltage ( "Mark" ) = 1
Low Voltage ( "Space" ) = 0

![Screenshot 2022-08-20 014323](https://user-images.githubusercontent.com/104309685/185699908-41b53d29-bfed-4510-9198-ad0507b9fcd8.png)

### Steps for UART communication :  ### 

Step1 : The transmitting UART receives data from the data bus in parallel

Step 2 : The transmitting UART adds the start, parity and stop bit to the data packet

Step 3 : The entire packet is sent from the transmitting UART to the receiving UART serially. Using the configured baud rate the receiving UART samples the data packet

Step 4 : The receiving UART converts the data back to its original form and then transfers it to the data bus where it can be used or visualized





# SPI ( Serial peripheral interface ) #

### PIN interface : ###
![Screenshot 2022-08-20 014755](https://user-images.githubusercontent.com/104309685/185700514-71662d7e-faa8-4927-8e30-28e19bcb3e3f.png)

### STEPS of Data Transmission : ###
 1] The master outputs the clock signal :
 ![Screenshot 2022-08-20 015141](https://user-images.githubusercontent.com/104309685/185701022-8230df45-905e-48e1-b428-5325b40011f8.png)

2] The master switches the SS/CS pin to a low voltage state, which activates the slave:
![Screenshot 2022-08-20 015322](https://user-images.githubusercontent.com/104309685/185701272-f4e9453e-dd9b-437c-aec7-1ad228d0efa5.png)

3] The master switches the SS/CS pin to a low voltage state, which activates the slave:
![Screenshot 2022-08-20 015509](https://user-images.githubusercontent.com/104309685/185701558-604ee801-5769-4012-b50b-55280458b955.png)

4] If a response is needed, the slave returns data one bit at a time 
to the master along the MISO line. The master reads the bits as they 
are received:
![Screenshot 2022-08-20 015602](https://user-images.githubusercontent.com/104309685/185701712-ddb7b54a-be1a-4154-b4a2-921ae9842556.png)

### Waveform ###
![SPI_CS_Updated](https://user-images.githubusercontent.com/104309685/185702093-b2159279-fdf3-404f-9f7f-c8d948ee73a7.jpg)


# I2C ( Inter Integrated controller )

Address Frame: A 7 or 10 bit sequence unique to each slave that identifies the slave when the master wants to talk to it.

Read/Write Bit: A single bit specifying whether the master is sending data to the slave (low voltage level) or requesting data from it (high voltage level).

ACK/NACK Bit: Each frame in a message is followed by an acknowledge/no-acknowledge bit. If an address frame or data frame was successfully received, an ACK bit is returned to the sender from the receiving device.

![Screenshot 2022-08-20 020142](https://user-images.githubusercontent.com/104309685/185702604-b0ad155e-cbd3-4a0e-a9fe-58de561f7ed5.png)

### STEPS of transmission :

1] The master sends the start condition to every connected slave by switching the SDA line from a high voltage level to a low voltage level before switching the SCL line from high to low

![Screenshot 2022-08-20 020406](https://user-images.githubusercontent.com/104309685/185702949-afe44fde-4f44-4d87-9435-a356d8baccb2.png)

2] The master sends each slave the 7 or 10 bit address of the slave it wants to communicate with, along with the read/write bit.

![Screenshot 2022-08-20 020503](https://user-images.githubusercontent.com/104309685/185703052-de080dd5-ae9d-43eb-bcee-8857c464f258.png)

3] Each slave compares the address sent from the master to its own address. If the address matches, the slave returns an ACK bit by pulling the SDA line low for one bit. If the address from the master does not match the slave’s own address, the slave leaves the SDA line high.

![Screenshot 2022-08-20 020546](https://user-images.githubusercontent.com/104309685/185703177-c48f1cdc-19db-4b87-896a-d28a9152812a.png)

4] The master sends or receives the data frame

![Screenshot 2022-08-20 020833](https://user-images.githubusercontent.com/104309685/185703542-e31cbd03-1bcc-488b-847a-f87254e6c756.png)

5] After each data frame has been transferred, the receiving device returns another ACK bit to the sender to acknowledge successful receipt of the frame

![Screenshot 2022-08-20 021012](https://user-images.githubusercontent.com/104309685/185703769-cea0574a-3782-47d3-bd16-493e5f86cefa.png)

6] To stop the data transmission, the master sends a stop condition to the slave by switching SCL high before switching SDA high

![Screenshot 2022-08-20 021229](https://user-images.githubusercontent.com/104309685/185704071-7da25530-66b1-4bad-8e0b-dcc30a01f2fb.png)







