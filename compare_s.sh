#!/bin/bash

rm setup_costs.dat
rm shortage_costs.dat         
rm holding_costs.dat          
rm dependent_costs.dat



for i in {1..40}; do
    output=`./SIM R $i sis1.dat | grep OUTPUT | awk '{print $2}'`

    values=( $output )

    echo ${values[0]} >> setup_costs.dat
    echo ${values[1]} >> shortage_costs.dat
    echo ${values[2]} >> holding_costs.dat
    echo ${values[3]} >> dependent_costs.dat
done
