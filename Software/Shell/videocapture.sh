#videocapture.sh

# Simple Test
#  Ctrl^C to exit
# sensor_id selects the camera: 0 or 1 on Jetson Nano B01


gst-launch-1.0 nvarguscamerasrc sensor_id=0 ! nvoverlaysink

# More specific - width, height and framerate are from supported video modes
# Example also shows sensor_mode parameter to nvarguscamerasrc
# See table below for example video modes of example sensor
# gst-launch-1.0 nvarguscamerasrc sensor_id=0 ! \
#    'video/x-raw(memory:NVMM),width=3280, height=2464, framerate=21/1, format=NV12' ! \
#    nvvidconv flip-method=0 ! 'video/x-raw,width=960, height=720' ! \
#    nvvidconv ! nvegltransform ! nveglglessink -e