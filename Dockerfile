FROM ghcr.io/ezmldev/mlflow:v2.6.0
LABEL org.opencontainers.image.source https://github.com/ezmldev/docker-serving-api
COPY requirements.txt /app/
WORKDIR /app
RUN pip install -r requirements.txt
COPY *.py /app/
ENV MODEL_PATH=/model
ENV PYTHONPATH="/usr/lib/python3.11/site-packages/:/model/venv/lib/python3.11/site-packages/:/usr/local/lib/python3.11/site-packages/"
CMD ["sh", "-c", "${MODEL_PATH}/venv/bin/python service.py"]
