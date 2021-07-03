FROM ubuntu:20.10
RUN apt-get update && apt-get install nano --yes

EXPOSE "5000"
CMD ["gunicorn", "workers=3", "--bind", "0.0.0.0:5000","app:app"]

# Docker registry
# docker image build -t romulovitor/ubuntu-nano:v1 .
# docker push romulovitor/ubuntu-nano:v1