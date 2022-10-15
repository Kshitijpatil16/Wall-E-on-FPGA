## Wall-E-on-FPGA 

![Black Glitch VHS Tech Gadget Youtube Thumbnail](https://user-images.githubusercontent.com/104309685/195961998-82c83786-edf8-45c4-a5b6-4632022b7348.png)
This project aims to build Wall-E bot but instead of esp32, we will be using FPGA as the brain of bot. Final goal of this project is to demonstrate line following and self balancing by integrating LSA and MPU with FPGA.

  

<!-- TABLE OF CONTENTS -->
## Table of Contents
  - [Project introduction](#wall-e-on-fpga)
  - [Table of Contents](#table-of-contents)
    - [Tech Stack](#tech-stack)
    - [File Structure](#file-structure)
  - [Workflow](#workflow)
 
  - [Future Work](#future-work)
  - [Contributors](#contributors)
  - [Acknowledgements and Resources](#acknowledgements-and-resources)
  




### Tech Stack
- [EDA playground](https://www.edaplayground.com/)
- [Upduino v3.0](https://www.addicore.com/tinyVision-ai-UPDuino-v3-0-p/ad589.htm)
- [Cyclone II ](https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=0CAQQw7AJahcKEwiIrPLYzuD6AhUAAAAAHQAAAAAQAg&url=https%3A%2F%2Fdatasheet.octopart.com%2FEP2C5T144C8-Altera-datasheet-7627975.pdf&psig=AOvVaw3E__dmTERjVohlBzFjPop0&ust=1665887434626508)
- [Quartus Prime](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwjo26jVmOH6AhVL4TgGHdJYAIIQFnoECA0QAQ&url=https%3A%2F%2Fwww.intel.com%2Fcontent%2Fwww%2Fus%2Fen%2Fproducts%2Fdetails%2Ffpga%2Fdevelopment-tools%2Fquartus-prime.html&usg=AOvVaw26c8YZi2aVkOE4mZSaLLXS)



### File Structure
```
📦Wall-E-on-FPGA
 ┣ 📂data                           # contains data and resources used throught the project 
 ┣ 📂docs                           # contains documents made while research process
 ┣ 📂rtl                            # includes verilog design codes 
 ┣ 📂testbench                      # includes verilog testbench codes for simulation purpose 
 
 ```

<!-- WORKFLOW -->
## Workflow 
### Learning Phase :
Includes ~ 
- Syantax of verilog HDL 
- MCP3208 Datasheet 
- PWM and PID concepts 
- EDA Playground simulations 
- Upduino v3.0 Datasheet 
- Motor driver TB6612FNG Datasheet 
             
### Creating code structures 
- ADC 4 channel code simulation for IC MCP3208
![image](https://user-images.githubusercontent.com/104309685/195965480-e78b27f4-f1d5-473f-9cd2-07e464c3a16b.png)
![image](https://user-images.githubusercontent.com/104309685/195965502-5297a297-9c2c-47a7-88f7-87190060e252.png)

### Designing the hardware circuit and verifying code results 
- To check wheter the IC responds perfectly and dumps the resulted output of 12 bit data


![image](https://user-images.githubusercontent.com/104309685/195965581-ba62c06c-fe6d-4364-9a80-91afe46160da.png)
![image](https://user-images.githubusercontent.com/104309685/195965777-cf5d7125-42d1-4bd9-8f1c-fed981b874cb.png)

### Pin connections of Hardware

![image](https://user-images.githubusercontent.com/104309685/195965964-11b3cee6-f5c1-4ba2-8eb5-8fba89ecbaed.png)


### Dataflow checking using signal tap analyzer for cyclone II 
![image](https://user-images.githubusercontent.com/104309685/195965835-dd1a65b0-2351-471f-b759-ae72c91f5f1d.png)

![image](https://user-images.githubusercontent.com/104309685/195965861-f0651a97-a198-46dc-9b91-79160c8c1ad1.png)







<!-- FUTURE WORK -->
## Future Work
- [ ] Apply self balancing module 

<!-- CONTRIBUTORS -->
## Contributors
* [Kshitij Patil](https://github.com/Kshitijpatil16)
* [Omkar Hatekar](https://github.com/Omkar0820)

## Mentors 

* [Premraj Jadhav](https://github.com/Premraj02)
* [Siddhesh Patil](https://github.com/Sidshx)

<!-- ACKNOWLEDGEMENTS AND REFERENCES -->
## Acknowledgements and Resources
* [SRA VJTI](http://sra.vjti.info/) Eklavya 2022  
* [Resources](https://github.com/Kshitijpatil16/Wall-E-on-FPGA/tree/main/data)
