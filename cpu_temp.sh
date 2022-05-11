date | tr '\n' '\t' >> /home/pi/cpu_temp.log ; vcgencmd measure_temp| tr -d "temp=" | tr -d "'C" >> /home/pi/cpu_temp.log
