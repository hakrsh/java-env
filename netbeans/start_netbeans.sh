xhost +                                                                                                                                           
echo "Starting netbeans"    

docker run -ti -d -e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v ~/Workspace/netbeansProjects:/home/developer/workspace/ \
netbeans netbeans/bin/netbeans  