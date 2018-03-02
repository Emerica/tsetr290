docker build -t tsetr290:latest .
docker run -i -t --mount type=bind,source=%SOURCEDIR%,target=/scan tsetr290:latest \
  /usr/local/bin/tsetr290 /scan/%MEDIAFILE.ts% %BITRATE%
  
