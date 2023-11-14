FROM ghcr.io/ezmldev/mlflow:v2.6.0
LABEL org.opencontainers.image.source https://github.com/ezmldev/docker-serving-api
COPY requirements.txt /app/
WORKDIR /app
RUN pip install -r requirements.txt
COPY *.py /app/
ENV MODEL_PATH=/model
CMD ["sh", "-c", "${MODEL_PATH}/venv/bin/python", "service.py" ]
