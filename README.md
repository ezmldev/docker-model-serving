# docker-model-serving
A docker image to serve ml models via fastapi.


## Usage
This image doesn't contain any model. You have to provide it via a volume
```
docker run -d -v model:/model -p 5000:5000 ghcr.io/ezmldev/model-serving:main 

```

A model is the output of an mlflow model with pyfunc model flavor.

