### See: https://github.com/arduino/arduino-cli

test:
	arduino-cli sketch new MyFirstSketch

show:
	cat /home/luca/Arduino/MyFirstSketch/MyFirstSketch.ino

edit:
	~/Arduino/MyFirstSketch/MyFirstSketch.ino

update:
	arduino-cli core update-index

list-board:
	arduino-cli board list

search-hw:
	arduino-cli core search arduino
	arduino-cli core search other
	arduino-cli core search esp
	arduino-cli core search 8266

install-rand:
	arduino-cli core install arduino:samd
	arduino-cli core list
	arduino-cli board list
	arduino-cli board listall mkr
	# vim arduino-cli.yaml

# board_manager:
#  additional_urls:
#    - http://arduino.esp8266.com/stable/package_esp8266com_index.json

	#arduino-cli core update-index
	#arduino-cli core install esp8266:esp8266
	#arduino-cli compile --fqbn arduino:samd:mkr1000 Arduino/MyFirstSketch
	#arduino-cli upload -p /dev/ttyACM0 --fqbn arduino:samd:mkr1000 Arduino/MyFirstSketch
	#arduino-cli lib search wifi101
	#arduino-cli lib install "WiFi101"
	#
