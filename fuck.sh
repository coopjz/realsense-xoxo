rosrun dynamic_reconfigure dynparam set /camera/stereo_module emitter_on_off 0
sleep 1
rosrun dynamic_reconfigure dynparam set /camera/stereo_module enable_auto_exposure False
sleep 1
rosrun dynamic_reconfigure dynparam set /camera/stereo_module exposure 2000
sleep 1
rosrun dynamic_reconfigure dynparam set /camera/stereo_module hdr_enabled 0
sleep 1
rosrun dynamic_reconfigure dynparam set /camera/stereo_module emitter_on_off 1
sleep 1
# rosrun dynamic_reconfigure dynparam set /camera/
# sleep 1
 