xhost +                                                                                                                                           
echo "Starting Eclipse"    

docker run -ti -d -e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v ~/Workspace/EclipseProjects:/home/developer/workspace/ \
eclipse eclipse/eclipse  