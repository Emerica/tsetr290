

# TSETR290 with docker/bind mount #

%SOURCEDIR% = A directory with TS files you want to scan.  

%MEDIAFILE.ts% = A Transport Stream in the directory

%BITRATE% = The expected bitrate 

```
git clone https://github.com/Emerica/tsetr290.git
cd tsetr290/docker
docker build -t tsetr290:latest .
docker run -i -t --mount type=bind,source="%SOURCEDIR%",target=/scan tsetr290:latest \ 
  /usr/local/bin/tsetr290 "/scan/%MEDIAFILE.ts%" %BITRATE%
```
