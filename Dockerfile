FROM openjdk:7-jdk-alpine
WORKDIR /mnt
COPY ./ ./
RUN sh ./posix-compile.sh
EXPOSE 8484 7575 7576 7577
CMD exec sh ./configure-launch.sh
