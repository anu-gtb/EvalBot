FROM python:3.12-alpine

WORKDIR /scoring

COPY scoring.py /app/

RUN pip install -r requirements.txt

#COPY model2/ /app/
#COPY model.py /app/
#COPY scoring.py /app/

EXPOSE 8501

CMD ["streamlit","run","scoring.py"]