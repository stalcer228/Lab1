FROM ubuntu:latest
RUN apt-get update && \
    apt-get -y install g++ 
WORKDIR /bin
COPY . /bin
RUN g++ Lab2.cpp -o test
CMD ["./test"]
