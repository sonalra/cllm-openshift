FROM java:latest
WORKDIR /
ADD app-tx.jar app-tx.jar
ADD app-rx.jar app-rx.jar
EXPOSE 34000-35000
#CMD export TYPE=SENDER; export LD_LIBRARY_PATH=. ; java -jar app-rx.jar & ; java -jar app-tx.jar
