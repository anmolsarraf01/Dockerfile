FROM python
COPY . /src
CMD ["python", "/src/PythonExample.py"]
RUN chmod +x /shell-script.sh
CMD ["Completed"]
