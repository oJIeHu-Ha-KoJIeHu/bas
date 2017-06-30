#!/bin/bash

read Value1;
if [[ $Value1 = 0 ]]; then 
    echo "Error";
    exit 0;
fi
read Value2;
read Value3;
D=$(( ($Value2)*($Value2)-4*($Value1)*($Value3) ));

if [[ $D = 0 ]]; then
    echo -n "x = "
    echo -e "scale=1\n-0.5*($Value2)/($Value1)" | bc
elif [[ $D -gt 0 ]]; then
    echo -n "x1 = "
    echo -e "scale=1\n0.5*(-($Value2)+sqrt($D))/($Value1)" | bc
    echo -n "x2 = "
    echo -e "scale=1\n0.5*(-($Value2)-sqrt($D))/($Value1)" | bc
    exit 0;
    
fi
