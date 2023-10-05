FROM python:3.11.5-slim

WORKDIR /app

COPY src/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY src/ .
# COPY data_extraction/ .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]