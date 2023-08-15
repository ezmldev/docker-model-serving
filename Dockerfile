FROM ghcr.io/ezmldev/mlflow:v1.0
COPY requirements.txt /app/
WORKDIR /app
RUN pip install -r requirements.txt
COPY *.py /app/
ENV MODEL_PATH=/model
CMD [ "python", "service.py" ]