FROM python
COPY . /src
CMD ["python", "/src/PythonExample.py"]

FROM ubuntu:16.04 
COPY my-bash.sh /
RUN chmod +x /my-bash.sh && /my-bash.sh 
CMD ["Finished!"]
