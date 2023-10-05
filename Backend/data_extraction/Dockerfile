FROM python:3.11.5-slim

WORKDIR /data_extraction

COPY ./requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# COPY src/ .
COPY ./ .

CMD [ "python3", "data_extraction.py"]