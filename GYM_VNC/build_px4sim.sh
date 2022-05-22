nvidia-docker build -t mk/gym_pytorch_gpu ./
nvidia-docker run --name mk_px4_sim -e NB_UID=1000 -e NB_GID=1000 -e VNC_SERVER_PASSWORD=password -p 8998:8998 -p 6116:6116 -p 5920:5920  mk/gym_pytorch_gpu
#nvidia-docker run -d --name jupyter -v $NOTEBOOKS_PATH:/notebooks -e NB_UID=1000 -e NB_GID=1000 -e VNC_SERVER_PASSWORD=password -p 8888:8888 -p 6006:6006 -p 5900:5900  mk/gym_pytorch_gpu 

echo "build succeeded, wait a bit for X to start, then getting the jupyter notebook URL with token"
sleep 3
docker exec -it mk_px4_sim bash -c "jupyter notebook list"
