
FROM python
WORKDIR /python
COPY . /python
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir nibabel pydicom matplotlib pillow med2image
    RUN pip install --no-cache-dir Flask
EXPOSE 5000
ENV FLASK_APP app.py
CMD ["flask", "run", "--host=0.0.0.0"]

