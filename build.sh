
# build using squash (this will make the resulting image much smaller)
docker build --squash -t mk:cuda9.0-ubuntu18.04 .

# original build 
# docker build -t mk:cuda9.0-ubuntu18.04 .
