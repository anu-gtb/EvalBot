FROM python:3.12-slim-bookworm

WORKDIR /scoring

COPY requirements.txt .

RUN apt-get update && apt-get install -y build-essential python3-dev && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY model.py /scoring/
COPY scoring.py /scoring/

EXPOSE 8501

CMD ["streamlit","run","scoring.py","--server.port","8501"]