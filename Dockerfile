FROM python:3.6
MAINTAINER Bharath Charan pbharathcharan@gmail.com
WORKDIR ./
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
EXPOSE 8080
CMD ["gunicorn", "detect_mask:app"]
 
