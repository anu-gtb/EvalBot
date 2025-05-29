FROM python:3.12-alpine

WORKDIR /app

COPY requirements.txt /app/

RUN pip install -r requirements.txt

COPY model.py /app/
COPY model2/ /app/
COPY scoring.py /app/

EXPOSE 8501

CMD ["streamlit","run","scoring.py"]