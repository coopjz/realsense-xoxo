# ROS Wrapper for Intel&reg; RealSense&trade; Devices with Emitter on-off feature

These are packages for using Intel RealSense cameras (D400 series SR300 camera and T265 Tracking Module) with ROS.

This version supports Kinetic, Melodic and Noetic distributions.


LibRealSense2 supported version: from v2.50.0 to the most recent version (see [realsense2_camera release notes](https://github.com/IntelRealSense/realsense-ros/releases))


## Emitter on-off feature
The structured light emitter will only be presented in half of the frames, enabling us to get good depth result while leaving no annoying structured light points in infra image. The structured light points would destroy your Vins estimitor.
## Installation Instructions
### Install librealsense SDK from Sources(If you need cuda support, please do build the lib from source)
please refer to [Linux Ubuntu Installation](https://github.com/IntelRealSense/librealsense/blob/master/doc/installation.md)
### Install Intel&reg; RealSense&trade; ROS from Sources

  - Create a [catkin](http://wiki.ros.org/catkin#Installing_catkin) workspace
    *Ubuntu*

  ```bash
  mkdir -p ~/catkin_ws/src
  cd ~/catkin_ws/src/
  ```

  
  ```bash
  catkin_init_workspace
  cd ..
  catkin_make clean
  catkin_make -DCATKIN_ENABLE_TESTING=False -DCMAKE_BUILD_TYPE=Release
  catkin_make install
  ```

  *Ubuntu*

  ```bash
  echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
  source ~/.bashrc
  ```

  *Windows*

  ```batch
  devel\setup.bat
  ```

## Usage Instructions

### Start the camera node

To start the camera node in ROS:

```bash
roslaunch realsense2_camera rs_camera.launch
```

This will stream all camera sensors and publish on the appropriate ROS topics.

Other stream resolutions and frame rates can optionally be provided as parameters to the 'rs_camera.launch' file.

### Published Topics

The published topics differ according to the device and parameters.
After running the above command with D435i attached, the following list of topics will be available (This is a partial list. For full one type `rostopic list`):

- /camera/color/camera_info
- /camera/color/image_raw
- /camera/color/metadata
- /camera/depth/camera_info
- /camera/depth/image_rect_raw
- /camera/depth/metadata
- /camera/extrinsics/depth_to_color
- /camera/extrinsics/depth_to_infra1
- /camera/extrinsics/depth_to_infra2
- /camera/infra1/camera_info
- /camera/infra1/image_rect_raw
- /camera/infra2/camera_info
- /camera/infra2/image_rect_raw
- /camera/gyro/imu_info
- /camera/gyro/metadata
- /camera/gyro/sample
- /camera/accel/imu_info
- /camera/accel/metadata
- /camera/accel/sample
- /diagnostics

