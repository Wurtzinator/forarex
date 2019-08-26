#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Jul 28 12:39:58 2019

@author: taco
"""
#############################################################################
####################Import all packages######################################
#############################################################################
import os
import numpy as np
import missingno as msno
import seaborn as sns
import matplotlib.pyplot as plt
import pandas as pd
pd.set_option('display.max_rows', 500)
pd.set_option('display.max_columns', 500)
pd.set_option('display.width', 1000)
#############################################################################

os.getcwd()


df_exp_merg = pd.read_csv('data/experiment/merged/exp_merged_pre_and_flight.csv')
df_ctrl_merg = pd.read_csv('data/control/merged/control_merged_raw.csv')

df_exp_merg.head()

# Create different time epochs for convenient plotting & exploration
postflight.loc[:, 'year'] = postflight.timeStamp.dt.year
postflight.loc[:, 'month'] = postflight.timeStamp.dt.month
postflight.loc[:, 'day'] = postflight.timeStamp.dt.day
postflight.loc[:, 'hour'] = postflight.timeStamp.dt.hour
postflight.loc[:, 'minute'] = postflight.timeStamp.dt.minute
postflight.loc[:, 'second'] = postflight.timeStamp.dt.second


