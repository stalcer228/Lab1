FROM ubuntu
RUN apt-get -y update && apt-get install -y 
RUN apt-get -y install gcc
RUN apt-get -y install g++
RUN apt update -y
RUN apt install gcc-snapshot -y
RUN apt install gcc-6 g++-6 -y
WORKDIR /app
COPY . /app

ENTRYPOINT ["cpp"]
