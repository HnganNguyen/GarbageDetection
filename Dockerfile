# 1. Sử dụng Python 3.11 slim
FROM python:3.11-slim

# 2. Thiết lập thư mục làm việc
WORKDIR /app

# 3. Cài đặt các thư viện hệ thống (Đã thêm các thư viện hỗ trợ OpenCV)

RUN apt-get update && apt-get install -y \
    build-essential \
    libgl1 \
    libglib2.0-0 \
    libjpeg-dev \
    libpng-dev \
    git \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# 4. Copy requirements trước để tận dụng Docker Cache
COPY requirements.txt .

# 5. Nâng cấp pip và cài đặt thư viện Python
RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# 6. Copy toàn bộ project vào /app
COPY . /app

# 7. Mở cổng 80
EXPOSE 80

# 8. Chạy Flask app
CMD ["python", "app.py"]