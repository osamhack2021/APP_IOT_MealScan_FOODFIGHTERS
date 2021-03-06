<h1> ๐กIoT Part</h1>

<div align="center">
 
![Logo](../asset/readme/logo.jpg)

![RPi](https://img.shields.io/badge/Raspberry%20Pi-4B-brightgreen)
![Python](https://img.shields.io/badge/Python-3.7.4-blue)
![OpenCV](https://img.shields.io/badge/OpenCV-4.1.2-orange)
</div>

## ๐๋ชฉ์ฐจ
### [1.๐ Process ๊ตฌ์กฐ](#flow-chart)
### [2.๐Jupyter Notebook(colab)](#์์-๋ถ๋ฅ-์๊ณ ๋ฆฌ์ฆ)
### [3.๐Sequence Diagram](#sequence-diagram)
### [3.๐ป Reference ](#sequence-diagram)
<div align="left">

 
<h2> ๐ Process ๊ตฌ์กฐ </h2>

 <div align="Center">
  
 ### Flow Chart
 <img src="/asset/flow_chart.png">
 </div>
 
## โ**How to Run**

### ๋ผ์ฆ๋ฒ ๋ฆฌํ์ด ํ๊ฒฝ
```bash
$ git clone https://github.com/osamhack2021/APP_IOT_MealScan_FOODFIGHTERS.git
$ cd APP_IOT_MealScan_FOODFIGHTERS.git/IoT(Raspberry Pi)
$ python main.py
```
### Jupyter Notebook ํ๊ฒฝ
[Jupyter Notebook](https://github.com/osamhack2021/APP_IOT_MealScan_FOODFIGHTERS/blob/master/IoT(Raspberry%20Pi)/test_ImageProcess_.ipynb) ๋๋ [Colab](https://colab.research.google.com/drive/18UU9G10e4-TagV8DNqqpHqynXzzTFJOD?usp=sharing)์์ ์คํํด๋ณด์ธ์!
 
 
## ๐Jupyter Notebook(colab) 
### ์์ ๋ถ๋ฅ ์๊ณ ๋ฆฌ์ฆ
>> cv2.rectangle() ํจ์์ imshow() ํจ์๋ฅผ ํตํด์ ์ฌ์ฉ์์๊ฒ ์ํ์ ๋์ ์์น๋ฅผ ์๋ ค์ค๋ค.<br>
>> ์ค์  ์ํฉ์์๋ ์ฌ์ฉ์๊ฐ 3D ๊ตฌ์กฐ๋ฌผ์ ๋ฃ์ผ๋ฉด ์ฌ์ง์ด ์ฐํ๋ ์์น์ ์์ฐ์ค๋ฝ๊ฒ ๋์ฌ์ง๋ค.<br>
>> ๐ก ์๋ ์ด๋ฏธ์ง๋ Readme์์ฑ์ ์ํด ๋ง๋  ์ด๋ฏธ์ง์ด๋ฉฐ ์ค์  ์ด๋ฏธ์ง์๋ ์์ดํฉ๋๋ค.
 <img src="../asset/plate_image.png">
 
<br><br>
 
>> ์ด 5๊ฐ์ง๋ก ๋ถ๋ฅ๊ฐ ๋๋ฉฐ side_1, side_2, side_3, rice, soup๋ก ๋๋๋ค.<br>
>> ๐ก ์๋ ์ด๋ฏธ์ง๋ Readme์์ฑ์ ์ํด ๋น์จ์ ์กฐ์ ํ ์ด๋ฏธ์ง๋ก ์ค์  ์ฌ์ง๊ณผ ๋น์จ์ด ์์ดํฉ๋๋ค.
<img src="asset/test_image/70_per/70_per_side_1.png" width="300" height="300">
<img src="asset/test_image/70_per/70_per_side_2.png" width="300" height="300">
<img src="asset/test_image/70_per/70_per_side_3.png" width="300" height="300">
<img src="asset/test_image/70_per/70_per_rice.png" width="450" height="450">
<img src="asset/test_image/70_per/70_per_soup.png" width="450" height="450">
 
<br><br>
>>   ๋ถ๋ฅ์ ๋ชฉ์ ์ ์ ์ธก์  ์๊ณ ๋ฆฌ์ฆ์์ Init data์ Target data์ ์ ์์ ์ธ ๋งค์นญ์ ์ํด์ ์ด๋ค.<br>
>>   ๋ฐ๋ผ์ Init data์ ์ ์ฒด Target data(side 3๊ฐ์ง, main 2๊ฐ์ง)๋ฅผ ๋น๊ตํ์ฌ ์ต์ ์ ๋งค์นญ์ ์์ผ์ฃผ๋ ์์์ด๋ค.<br><br>
>> ๋ถ๋ฅ๋ ํฌ๊ฒ ์๋ 2๊ฐ์ง ๊ณผ์ ์ ๊ฑฐ์น๋ค.<br>
>>> 1. Side์ Main์ ๋๋๋ ๊ณผ์ .<br>
>>>  side๋ 3๊ฐ์ง ๋ฐ์ฐฌ์ ๋ปํ๋ฉฐ Main์ ๋ฐฅ๊ณผ ๊ตญ์ผ๋ก ๋๋๋ค.<br>
>>>  side[side_1,side_2,side_3] , main[soup,rice] <br>
>>> 2. ์ธ๋ถ์ ์ผ๋ก ๋๋๋ ๊ณผ์ .<br>
>>>   ์ ์ฒด Init data์ ์ ์ฒด Target data๋ฅผ ์ญํฌ์ ์์์ ํตํด ํ๋ ฌ์ ๋ง๋ ๋ค.<br>
>>>   side์ ๊ฒฝ์ฐ 3X3 ํ๋ ฌ main์ ๊ฒฝ์ฐ 2X2 ํ๋ ฌ์ด ๋๋ค.<br>
>>>   ํ๋ ฌ์ Max Weight๋ฅผ ์ฐพ๋ ์ฐ์ฐ์ ํ์ฌ Max Weight์ Init data๋ฅผ Mappingํด ์ ์ธก์  ์๊ณ ๋ฆฌ์ฆ์ผ๋ก ๋๊ธด๋ค.<br>
>> <br>
>> ๐ก Test Process์๋ ๋ถ๋ฅ ์๊ณ ๋ฆฌ์ฆ์ด ๋ค์ด๊ฐ์ง์๋๋ค. ์์ธํ ๋ด์ฉ์ ์๋ ๐๋ฅผ ์ฐธ๊ณ 

<div align="center" >
<img src="../asset/rasp_table_1.png" >
</div>
<details>
<summary>๐</summary>
 
 >> **๐ Test Process์ Main Process์ ์ฐจ์ด์ **<br>
 >> Test์ Main์ ์ฐจ์ด์ ์ ๋ถ๋ฅ ์๊ณ ๋ฆฌ์ฆ์ ์ ๋ฌด์ด๋ค.<br>
 >> ์์ ์ธก์ ํ๋ ์๊ณ ๋ฆฌ์ฆ์ Init data์ Target data๋ฅผ ์ญํฌ์ํ์ฌ ์์ ์ธก์ ํ๋ค.<br>
 >> ๋ฐ๋ผ์ Init data์ ์์์ Target data์ ์์์ด ์ผ์นํด์ผํ๋๋ฐ.<br>
 >> ๊ฐ ์ฌ์ฉ์์ ์์์ ๋ด๋ ์์์ ๋ฐฐ์น๋ฒ์ ์์ดํ๊ธฐ ๋๋ฌธ์ ์ด๋์ ์ด๋ ๋ฐ์ฐฌ์ด ์์์ง ๋ชจ๋ฅธ๋ค.<br>
 >> Main์์๋ ์ ๋ถ๋ฅ ์๊ณ ๋ฆฌ์ฆ์ ์ฌ์ฉํ์ฌ ๋ฐฐ์น์ ์๊ด์์ด ํ๋ฅ ์ ๊ธฐ๋ฐํ์ฌ ํด๋น ์์์ ์๋ฐ๋ฅ ์ ๋ฐํํ๋ค.<br>
 >> ํ์ง๋ง Test Image์ ์์ ๋ฐฐ์น๋ ์กฐ์ ํ  ์ ์๊ธฐ ๋๋ฌธ์ ๋ถ๋ฅ ์๊ณ ๋ฆฌ์ฆ์ ๋ฃ์ ํ์์ฑ์ด ์๋ค.<br>

</details>
 
 
### ์ ์ธก์  ์๊ณ ๋ฆฌ์ฆ
 
>> ์ ์์ ๋ถ๋ฅ ์๊ณ ๋ฆฌ์ฆ์ ํตํด init data์ target data๊ฐ ์ ์์ ์ผ๋ก Mapping๋ ์ํ์ด๋ค.<br>
>> ์ ์ธก์  ์๊ณ ๋ฆฌ์ฆ์ ์ญํฌ์(BackProjection)์ ๊ธฐ๋ฐ์ผ๋ก ๋ง๋ค์ด์ง ์๊ณ ๋ฆฌ์ฆ์ผ๋ก Init data์ Target data๋ฅผ ๋น๊ตํ์ฌ<br>
>> ์๋ฐ์ ์์ ์ธก์ ํ๋ ์๊ณ ๋ฆฌ์ฆ์ด๋ค<br><br>
>> ์ ์ธก์  ์๊ณ ๋ฆฌ์ฆ์ ์ด 3๊ฐ์ง ๊ณผ์ ์ผ๋ก ์ด๋ฃจ์ด์ก๋ค.
 >>> **1. BackProjection**<br>
 >>>ใใ์ญํฌ์ ์๊ณ ๋ฆฌ์ฆ์ ์ ์ฉํ๋ ๋จ๊ณ์ด๋ค Mapping๋ ๋ Image๋ฐ์ดํฐ๋ฅผ ์ญํฌ์ํ์ฌ 1์ฐจ RESULT๊ฐ์ ์ถ๋ ฅํ๋ค. <br>
 >>>ใใ1์ฐจ RESULT๊ฐ์ ์ญํฌ์์ผ๋ก ๋งคํ๋ ๋ถ๋ถ์ ์ ์ธํ ๋ถ๋ถ๋ค์ ๋ฐํํ๋ ๊ฐ์ด๋ค.<br>
 >>> **2. Masking**<br>
 >>>ใใ์์์ ๋ง๋ค์ด์ง 1์ฐจ RESULT๊ฐ๋ค์ thresholdํจ์๋ฅผ ํตํด ๋ชจ๋ ๊ฒ์ ์(0,0,0)์ผ๋ก ๋ฐ๊ฟ์ฃผ๊ณ  thr๋ก ๋ฐํํ๋ค.<br>
 >>>ใใTarget image์ thr์ bitwise_andํจ์๋ฅผ ํตํด Masking ์์ ํด์ค๋ค.<br>
 >>> **3. ๋น์จ ์ธก์ **<br>
 >>>ใใ๋ง์คํน๋ ์ฆ Image์ค RGB(0,0,0)์ธ ๋ถ๋ถ์ ์๋ฐ์ผ๋ก ๊ฐ์ง๊ฐ ์๋ ๋ถ๋ถ์ด๋ค. <br>
 >>>ใใ๋ฐ๋ผ์ ์ ์ฒด ํฝ์์ ๊ฐฏ์์ RGB(0,0,0)์ธ ํฝ์์ ๊ฐฏ์๋ฅผ ๋น๊ตํ์ฌ ๋ฐฑ๋ถ์จ๊ฐ์ ์ถ๋ ฅํ๋ฉด ์๋ฐ์ ๋จ๊ธด ์์ด ๋๋ค. <br>
 <div align="center">
 <img src="../asset/expression_1.png">
 <br>
 
 <img src="../asset/masking.png">
  </div>
 
 ___
 
<h3> ์์ ๋ถ๋ฅ ์๊ณ ๋ฆฌ์ฆ ๋ฐ ์ ์ธก์  ์๊ณ ๋ฆฌ์ฆ ํ์คํธ ๊ฒฐ๊ณผ </h3>
 
 >>[Test Data](https://github.com/osamhack2021/APP_IOT_AI_Meal-Mil-Scan_FOODFIGHTERS/tree/master/IoT(Raspberry%20Pi)/asset/test_image)  ๋ฅผ ๋์์ผ๋ก ์๊ณ ๋ฆฌ์ฆ ์คํ ๊ฒฐ๊ณผ  <br>
 <img src="../asset/jupyter_img1.png">
 
 >>์๊ณ ๋ฆฌ์ฆ์ ์ ์ฉํ [Result](https://github.com/osamhack2021/APP_IOT_AI_Meal-Mil-Scan_FOODFIGHTERS/tree/master/IoT(Raspberry%20Pi)/asset/result_test_image) ๊ฐ (์๋ฐ ์ด์ธ์ ๋ถ๋ถ์ ๊ฒ์ ์(#000000)์ผ๋ก Masking)<br>
 <img src="../asset/jupyter_img2.png">
 <img src="../asset/jupyter_img3.png">
 
<br> <br>

[Jupyter Notebook](https://github.com/osamhack2021/APP_IOT_MealScan_FOODFIGHTERS/blob/master/IoT(Raspberry%20Pi)/test_ImageProcess_.ipynb) ๋๋ [Colab](https://colab.research.google.com/drive/18UU9G10e4-TagV8DNqqpHqynXzzTFJOD?usp=sharing)์์ ์คํํด๋ณด์ธ์!
 
<h2> ๐Sequence Diagram </h2>
<div align="center">
 
### Sequence Diagram 
 
<img src="/asset/seq_chart.png">
</div>

</div>

## ๐ป Reference 
|Raspberry Pi|Python|OpenCV|
|:---:|:---:|:---:|
|<a href="https://www.raspberrypi.org/"><img src="/asset/raspberrypi_logo_icon_168030.png" height="50px"></a>|<a href="https://www.python.org/"><img src="/asset/python.png" height="30px"></a>|<a href="https://www.opencv.org/"><img src="/asset/OpenCV_Logo.png" height="50px"></a>|

|์ฌ์ฉํ ์คํ์์ค ๊ธฐ์ |์ฉ๋ 
|:---:|:---:|
|[BackProjection](https://docs.opencv.org/3.4.15/da/d7f/tutorial_back_projection.html)| ์๋ฐ ์ธก์  ๋ฐ Classification ์๊ณ ๋ฆฌ์ฆ์ ๋ค์ด๊ฐ๋ ์ญํฌ์ ๊ธฐ์ 
|[opencv Webcam](https://docs.opencv.org/4.5.3/d8/dfe/classcv_1_1VideoCapture.html)| ๋ผ์ฆ๋ฒ ๋ฆฌํ์ด ์ค์๊ฐ ์๋ฐ ์ธก์ ์ ์ํ ๊ธฐ์ 
|[opencv Class index](https://docs.opencv.org/master/annotated.html)| Transfer Colorspace Class (HSV,GRAY,GRB ...)


