# Staircase experiment on Random dots 
The Question: 
Across the visual field, including outside of the fixation and attention point, which of these do we experience:
- Sharp/precise percepts with identifiable locations
- A ‘summary statistics’ of percepts in broad regions of the field
- Something else?

This python code runs a psychological experiment attempting to find the threshold of the number of dots that people can presicely see. 
This is a staircase experiment which changes the number of dots in images depending on the response of a subject. For example, the number of dots increases when the subject gives correct response.

## Dataset
Dataset is generated by the matlab script dotsPython/imageGenerator.m

## How to run
```
git clone https://github.com/Yusuke710/StaircaseDots-Psychopy.git
python3 dotsPython/RandomDots.py
```
The output csv file is saved in the folder dotsPython/result.

## What the experiment looks like
![](dotsPython/psychopy.gif)
