FROM python:3.12-bullseye

WORKDIR /app

RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple/ --no-cache-dir  docker requests

COPY ./main.py /app/main.py

CMD ["python", "/app/main.py"]