<h1 align="center">♻️ GarbageDetection</h1>

<p align="center">
  Hệ thống phát hiện & phân loại rác thải bằng AI, xây dựng với Python và Flask
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Python-3.9+-blue">
  <img src="https://img.shields.io/badge/Flask-Web%20Framework-green">
  <img src="https://img.shields.io/badge/AI-Computer%20Vision-orange">
</p>

---

## 📌 Giới thiệu

**GarbageDetection** là một ứng dụng web sử dụng **Trí tuệ nhân tạo (AI)** để nhận diện và phân loại rác thải từ hình ảnh.
Dự án hướng tới việc nâng cao ý thức bảo vệ môi trường và hỗ trợ phân loại rác thông minh.

---

## 🧠 Chức năng chính

- 📷 Upload hình ảnh rác thải
- 🤖 Dự đoán loại rác bằng mô hình AI
- 📊 Hiển thị kết quả phân loại
- 🗂️ Quản lý thông tin rác (JSON)
- 🌐 Giao diện web thân thiện

---

## ⚙️ Công nghệ sử dụng

- **Python 3.9+**
- **Flask**
- **TensorFlow / Keras**
- **HTML / CSS**
- **JSON**
- **Docker** (tuỳ chọn)

---

## 📂 Cấu trúc thư mục

```text
GarbageDetection/
│
├── static/                 # CSS, hình ảnh
├── templates/              # HTML templates
│   ├── base.html
│   ├── home.html
│   ├── upload.html
│   └── result.html
│
├── app.py                  # Flask backend
├── waste_info.json         # Dữ liệu thông tin rác
├── requirements.txt        # Thư viện Python
├── runtime.txt             # Phiên bản Python
├── Dockerfile              # Docker config
├── Procfile                # Deploy (Heroku)
├── .gitignore
├── .dockerignore
└── README.md
🚀 Hướng dẫn chạy dự án
1️⃣ Clone repository
git clone https://github.com/HnganNguyen/GarbageDetection.git
cd GarbageDetection
2️⃣ Tạo môi trường ảo & cài thư viện
python -m venv venv
source venv/bin/activate      # Linux / Mac
venv\Scripts\activate         # Windows

pip install -r requirements.txt
3️⃣ Chạy ứng dụng Flask
python app.py
👉 Mở trình duyệt và truy cập:
http://127.0.0.1:5000

🌐 Demo giao diện

![Trang Phân Loại chính](static/anhdemo2.png)

🔮 Hướng phát triển
🔍 Cải thiện độ chính xác mô hình

🗑️ Phân loại nhiều loại rác hơn

📱 Tối ưu giao diện mobile

☁️ Deploy lên cloud (Render / Railway)

👩‍💻 Tác giả
Nguyễn Thị Hồng Ngân

GitHub: HnganNguyen

