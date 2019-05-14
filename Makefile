### See: https://github.com/arduino/arduino-cli

FQBN="esp8266:esp8266:nodemcu"
PROJECT="${HOME}/Arduino/MyFirstSketch"
BOARDDEV="/dev/ttyUSB0"

init:
	arduino-cli config init

update:
	arduino-cli core update-index

install:
	arduino-cli core install esp8266:esp8266

list-board:
	arduino-cli board list

new-project:
	arduino-cli sketch new MyFirstSketch

build:
	arduino-cli compile --fqbn $(FQDN) $(PROJECT)

upload:
	arduino-cli upload -p $(BOARDDEV) --fqbn $(FQBN) $(PROJECT)

lib-search:
	arduino-cli lib search wifi101

build-serial:
	arduino-cli compile --fqbn $(FQBN) "${PWD}/Serial"

upload-serial:
	arduino-cli upload -p $(BOARDDEV) --fqbn $(FQBN) "${PWD}/Serial"

serial:	build-serial upload-serial

# NPOPE!
# edit: ~/go/src/github.com/arduino/arduino-cli/configs/testdata/navigate/inheritance/first/arduino-cli.yaml 
# board_manager:
#  additional_urls:
#    - http://arduino.esp8266.com/stable/package_esp8266com_index.json

# arduino-cli init
# arduino-cli config init
# add url and so to /home/alarm/.arduino15/arduino-cli.yaml

	#arduino-cli core update-index
	#arduino-cli core install esp8266:esp8266
	#arduino-cli compile --fqbn arduino:samd:mkr1000 Arduino/MyFirstSketch
	#arduino-cli upload -p /dev/ttyACM0 --fqbn arduino:samd:mkr1000 Arduino/MyFirstSketch
	#arduino-cli lib search wifi101
	#arduino-cli lib install "WiFi101"
	#
