FROM java:latest
WORKDIR /
ADD /home/CSTester/cllm/app-tx.jar app-tx.jar
ADD /home/CSTester/cllm/app-rx.jar app-rx.jar
ADD /home/CSTester/cllm/librmm.so librmm.so
ADD /home/CSTester/cllm/libfmdutil.so libfmdutil.so
EXPOSE 34000-35000
CMD export TYPE=SENDER; export LD_LIBRARY_PATH=. ; java -jar app-rx.jar & ; java -jar app-tx.jar
