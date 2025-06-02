FROM python:3.13.3-slim-bookworm

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY main.py .

EXPOSE 8085

HEALTHCHECK --interval=30s --timeout=5s \
  CMD curl -f http://localhost:8085 || exit 1

CMD ["python", "main.py"]
