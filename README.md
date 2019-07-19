# TradingBrainWinX64
 TradingBrainWinX64 Debug Directory.
 
# System Build Specs
Built to be used on Windows 10 64Bit
 
# Introduction
The TradingBrain module uses pattern a ML.NET pattern recogintion formula to predict the daily percent changes of the next day.
Simply by shifting the known value of percent change a day back a prediction model can be generated for predicting the price for the current day.
# Quickstart
Run OpenWeaselTradingBrain.exe

Click Import Data > Import dataset prepared by OpenWeasel.com git clone https://github.com/OpenWeasel/USDTHB-1Y-HISTORICAL

Make sure to hit Reset to clean the prediction model data.

Type in Today's Values > Price, Open, Low, and High. No need to enter Volumes of for the trade at this time. Click Update under each field.

Click Start Simulation. The Machine Learning Engine will fire up on average for about 25 minutes before stopping. This will simulate different price change scenarios.

Click Run Calculation. A bar graph will pop up showing the probability of each percent change.

# R Packages & Dependencies
Install these R Packages & Dependecies
gtable, scales, lazyeval, plyr, rlang, tibble, withr, stringr, lubridate, PerformanceAnalystics, tidyquant

# Notable Technology Used
R
C#
ML.NET
Batch Scripting

# Support and Development
OpenWeasel.com has more development notes and details for anyone interested.

# Disclaimer
Use at your own risk. Program in current stage of Development isn't ready to be used in fully automated trading just yet.

# Created By
James Houston (maverick)
