♻️ GarbageDetection

Hệ thống phân loại rác thải thông minh bằng AI & Computer Vision


📌 Giới thiệu

GarbageDetection là ứng dụng web giúp người dùng chụp ảnh hoặc tải ảnh rác thải để hệ thống AI tự động nhận diện và phân loại rác.

Dự án ứng dụng Computer Vision kết hợp Deep Learning nhằm hỗ trợ nâng cao ý thức bảo vệ môi trường và hướng tới phân loại rác thông minh.

🎯 Mục tiêu dự án

Ứng dụng AI vào bài toán thực tế
Hỗ trợ người dùng phân loại rác nhanh chóng
Xây dựng hệ thống web thân thiện, dễ sử dụng
Làm nền tảng mở rộng cho các hệ thống môi trường thông minh

🚀 Tính năng chính

    📷 Chụp ảnh rác trực tiếp bằng camera

    📤 Tải ảnh rác từ thiết bị

    🤖 AI tự động phân loại rác

    📜 Xem lịch sử phân loại

    🏆 Bảng xếp hạng người dùng

    🔐 Đăng nhập / Đăng ký tài khoản

🧠 Công nghệ sử dụng
Thành phần	Công nghệ
Backend	Python, Flask
AI	TensorFlow / Keras
Frontend	HTML, CSS, Bootstrap
CSDL	SQLite
Deploy	Docker, Procfile
Khác	Git, GitHub
🗂️ Cấu trúc thư mục
GarbageDetection/
│
├── app.py                # File Flask chính
├── templates/            # Giao diện HTML
├── static/               # CSS, hình ảnh
├── requirements.txt      # Thư viện Python
├── Dockerfile            # Cấu hình Docker
├── Procfile              # Cấu hình deploy
├── runtime.txt           # Phiên bản Python
├── waste_info.json       # Dữ liệu mô tả rác
├── README.md             # Tài liệu dự án
└── .gitignore

⚙️ Cài đặt & chạy project
1️⃣ Clone repository

git clone https://github.com/HnganNguyen/GarbageDetection.git
cd GarbageDetection

2️⃣ Cài thư viện

pip install -r requirements.txt

3️⃣ Chạy ứng dụng

python app.py

🌐 Truy cập: http://127.0.0.1:5000

📸 Giao diện hệ thống
Trang chủ phân loại rác
Chụp ảnh bằng camera
Upload ảnh
Lịch sử & bảng xếp hạng
(Giao diện thiết kế theo tông xanh – thân thiện môi trường 🌱)

👩‍💻 Tác giả

Nguyễn Thị Hồng Ngân - 223845
🎓 Sinh viên Công nghệ Thông tin - Lớp DH22KPM01
📚 Đồ án / Dự án học tập
💚 Quan tâm đến AI & môi trường

🌱 Định hướng phát triển
Nâng cao độ chính xác mô hình AI
Phân loại nhiều loại rác hơn
Gợi ý cách xử lý rác sau phân loại
Triển khai trên nền tảng di động
