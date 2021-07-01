#!/bin/bash

days_for_next_season=$( curl -s https://online-calculator.org/how-many-days-until-fall.aspx | ag -i -o '[0-9][0-9] days' | cut -c 1-3 | awk 'FNR==1' )

echo $days_for_next_season

sleep 1738
