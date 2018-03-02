##############################
#
# Install ETR290 Compliance
#
##############################

FROM debian:stretch-slim
MAINTAINER pXn Emerica (pXnEmerica@gmail.com)

#Update, upgrade and install dependencies
RUN apt-get update && apt-get -y install git build-essential wget unzip

#Clone the repo
RUN git clone https://github.com/Emerica/tsetr290.git && cd /tsetr290 \
  && make && make install

#Cleanup
RUN cd .. && rm -rf tsetr290

#Testing only
RUN wget http://www.w6rz.net/bars709.zip -O bars.zip && unzip bars.zip
RUN rm bars.zip && mv hdenc/bars709.ts . && rmdir hdenc
RUN tsetr290 bars709.ts
