FROM ubi8/ubi:latest
RUN yum install -y python39 cmake
RUN pip3 install sparsezoo sparseml deepsparse flask onnxruntime torch
RUN mkdir /app
COPY deepsparse_utils.py /app/
COPY benchmark.py /app/
COPY benchmark_loop.sh /app/
COPY requirements.txt /app/
WORKDIR /app
RUN pip3 install opencv-python
RUN pip3 install flask
RUN pip3 install flask-cors
RUN yum install -y mesa-libGL
RUN pip3 install torch
RUN pip3 install torchvision
ENTRYPOINT ["sh","benchmark_loop.sh"]
