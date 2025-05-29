FROM python:3.12-alpine

WORKDIR /app

COPY requirements.txt /app/

RUN pip install -r requirements.txt

COPY model2/ /app/
COPY src/model.py /app/
COPY src/scoring.py /app/

EXPOSE 8501

CMD ["streamlit","run","scoring.py"]