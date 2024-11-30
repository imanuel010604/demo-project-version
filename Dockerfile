# Gunakan Python 3.9 sebagai base image
FROM python:3.9-slim

# Tetapkan direktori kerja di container
WORKDIR /app

# Salin file requirements.txt ke dalam container
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Salin semua file ke container
COPY . .

# Tetapkan perintah default untuk menjalankan aplikasi
CMD ["python", "app.py"]
