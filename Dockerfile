FROM openjdk:7-jdk-alpine
RUN apk -U add tini
WORKDIR /mnt
COPY ./ ./
RUN sh ./posix-compile.sh
EXPOSE 8484 7575 7576 7577
CMD exec tini -- sh ./configure-launch.sh
