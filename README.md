<h1 align="center">♻️ GarbageDetection</h1>

<p align="center">
  Hệ thống phân loại rác thải sinh hoạt thông minh ứng dụng Trí tuệ nhân tạo
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Python-3.8+-blue">
  <img src="https://img.shields.io/badge/Flask-Web%20Framework-green">
  <img src="https://img.shields.io/badge/AI-Computer%20Vision-orange">
  <img src="https://img.shields.io/badge/Deep%20Learning-TensorFlow-red">
</p>
Link video demo & model.h5 đã train (vì do model vượt quá dung lượng trên github nên em đã để vào gg drive): https://drive.google.com/drive/folders/1v8bW2IKk2Fg0j4nyo0LsehD8XTb98tVR?usp=sharing
---

## 📖 Giới thiệu dự án

**GarbageDetection** là hệ thống phân loại rác thải sinh hoạt thông minh ứng dụng trí tuệ nhân tạo, được phát triển trong khuôn khổ Đồ án Chuyên ngành 2 tại Trường Đại học Nam Cần Thơ.

Hệ thống cho phép người dùng tải ảnh hoặc chụp ảnh rác thải trực tiếp, sau đó mô hình AI sẽ tự động nhận diện và phân loại vào đúng nhóm rác tương ứng trong vòng vài giây, đồng thời cung cấp hướng dẫn xử lý và cơ chế tích điểm thưởng nhằm khuyến khích cộng đồng tham gia bảo vệ môi trường.

---

## 🧠 Mô hình AI

Mô hình được xây dựng theo kiến trúc lai hai nhánh (*Two-Stream Hybrid Architecture*):

- **Nhánh Swin Transformer** — trích xuất đặc trưng ngữ nghĩa toàn cục của hình ảnh, nhận biết hình dạng tổng thể và mối quan hệ không gian giữa các vùng trong ảnh
- **Nhánh Autoencoder + SE-Block** — trích xuất đặc trưng cục bộ chi tiết về kết cấu bề mặt, độ bóng và các mẫu vi cấu trúc đặc trưng của từng loại vật liệu

Hai luồng đặc trưng được ghép nối (*concatenate*) và đưa qua lớp Softmax để phân loại. Nhờ chiến lược tiền huấn luyện và đóng băng tham số, mô hình chỉ có **dưới 1,4 triệu tham số** có thể huấn luyện — nhỏ gọn hơn đáng kể so với các mô hình thông thường, giúp triển khai nhanh với chi phí tính toán thấp.

---

## 📊 Hiệu năng mô hình

Được huấn luyện và đánh giá trên tập dữ liệu **Garbage Classification (Kaggle)** gồm 15.150 hình ảnh thuộc 12 lớp phân loại:

| Tập dữ liệu | Accuracy | Precision | Recall | F1-Score |
|:-----------:|:--------:|:---------:|:------:|:--------:|
| Train       | 99.02%   | 98.86%    | 99.16% | 99.00%   |
| Validation  | 97.32%   | 96.19%    | 98.08% | 97.12%   |
| Test        | ~95.5%   | ~95.2%    | ~95.0% | ~95.1%   |

> ✅ **AUC = 1.00** trên toàn bộ 12 lớp phân loại

---

## 🗂️ 12 lớp rác thải được phân loại

| Nhóm | Lớp |
|------|-----|
| 📄 Vật liệu sợi | Paper, Cardboard |
| 🌿 Rác hữu cơ | Biological |
| 🔩 Vật liệu cứng tái chế | Metal, Plastic |
| 🍶 Thủy tinh | Green-glass, Brown-glass, White-glass |
| 👕 Hàng dệt may | Clothes, Shoes |
| 🔋 Rác đặc biệt | Battery, Trash |

---

## ✨ Tính năng chính

- 🔍 **Nhận diện rác thải** bằng AI từ ảnh tải lên hoặc chụp trực tiếp từ camera
- 📋 **Hướng dẫn xử lý** kèm thông tin tác động môi trường sau mỗi lần phân loại
- 🏆 **Hệ thống tích điểm thưởng** và bảng xếp hạng cộng đồng
- 📅 **Lịch sử hoạt động** theo dõi các lần phân loại cá nhân
- 📊 **Dashboard thống kê** trực quan cho người dùng và quản trị viên
- 🔐 **Quản trị hệ thống** — tìm kiếm người dùng, xem toàn bộ nhật ký, xuất báo cáo Excel

---

## ⚙️ Công nghệ sử dụng

| Thành phần | Công nghệ |
|-----------|-----------|
| Ngôn ngữ lập trình | Python 3.8+ |
| Web Framework | Flask |
| Mô hình AI | TensorFlow / Keras |
| Kiến trúc mô hình | Swin Transformer + Autoencoder & SE-Block |
| Cơ sở dữ liệu | SQLite + SQLAlchemy |
| Giao diện | HTML5, CSS3, JavaScript |
| Huấn luyện mô hình | Kaggle GPU |
| Quản lý mã nguồn | GitHub |
| Triển khai | Heroku / Render / Docker |

---

## 📂 Cấu trúc thư mục
```text
GarbageDetection/
│
├── baocao/                     # Tài liệu báo cáo đồ án
├── instance/                   # SQLite database instance
├── static/                     # CSS, JavaScript, hình ảnh
├── templates/                  # HTML templates
│   ├── admin.html              # Giao diện quản trị Admin
│   ├── base.html               # Template gốc (layout chung)
│   ├── history.html            # Lịch sử hoạt động
│   ├── home.html               # Trang chủ / Dashboard
│   ├── index.html              # Trang chính
│   ├── leaderboard.html        # Bảng xếp hạng
│   ├── login.html              # Đăng nhập
│   ├── register.html           # Đăng ký tài khoản
│   ├── result.html             # Kết quả phân loại
│   ├── statistics.html         # Thống kê
│   ├── upload.html             # Tải ảnh lên
│   └── waste_detail.html       # Chi tiết loại rác
│
├── tfhub_models/               # Mô hình Swin Transformer từ TF Hub
├── uploads/                    # Ảnh người dùng tải lên
├── venv/                       # Môi trường ảo Python
│
├── app.py                      # Flask backend chính
├── model.h5                    # Mô hình AI đã huấn luyện
├── waste_info.json             # Dữ liệu thông tin các loại rác
├── requirements.txt            # Thư viện Python
├── runtime.txt                 # Phiên bản Python
├── Dockerfile                  # Docker config
├── Procfile                    # Deploy (Heroku)
├── .gitignore
├── .dockerignore
└── README.md
```

---

## 🚀 Hướng dẫn chạy dự án

**1️⃣ Clone repository**
```bash
git clone https://github.com/HnganNguyen/GarbageDetection.git
cd GarbageDetection
```

**2️⃣ Tạo môi trường ảo & cài thư viện**
```bash
python -m venv venv
source venv/bin/activate      # Linux / Mac
venv\Scripts\activate         # Windows
pip install -r requirements.txt
```

**3️⃣ Chạy ứng dụng Flask**
```bash
python app.py
```

**👉 Mở trình duyệt và truy cập:**
```
http://127.0.0.1:5000
```

---

## 🔮 Hướng phát triển

- 📱 Phát triển ứng dụng di động (Android / iOS) với tính năng chụp ảnh trực tiếp
- 🏫 Triển khai cho trường học nhằm nâng cao ý thức phân loại rác
- 🏢 Áp dụng trong khu chung cư, khu đô thị thông minh
- 🏭 Kết nối với hệ thống phân loại rác tự động trên băng chuyền công nghiệp
- 📷 Tích hợp camera thời gian thực (*real-time detection*)
- 🤖 Kết hợp IoT (ESP32, Raspberry Pi) để phân loại tự động tại nguồn
- 🎁 Quy đổi điểm thưởng thành voucher hoặc quà tặng thân thiện môi trường
- 🔄 Tích hợp học liên tục (*continual learning*) để mô hình tự cải thiện theo thời gian

---

## 📚 Tài liệu tham khảo

[1] 	Ahmad K, Al-Arif SMMR, Khan MAU, Mohammed N (2020), “Intelligent fusion of deep features for improved waste classification”, IEEE Access, 8, 167232-167243. 
[2]	Anh Tuấn, Mạnh Hùng (2025), “Tràn lan các bãi chôn lấp rác thải sinh hoạt gây ảnh hưởng nghiêm trọng đến người dân”, Báo điện tử Đài Truyền hình Việt Nam (VTV).
[3]	Hồ Xuân (2024), “Giải pháp xử lý chất thải rắn sinh hoạt là khuyến khích tái chế, tái sử dụng”, Báo điện tử VietNamNet.
[4] 	Huy Tú (2026), “Cuộc cách mạng trong ngành tái chế rác thải với AI”, Tạp chí điện tử VnEconomy.
[5]	Sreelakshmi K, Subeera VV, Jabeena A (2021), “Waste classification using ResNet50 with custom layers”, 2021 International Conference on Communication, Control and Information Sciences (ICCISc), 1-6.
[6]	Zheng J, Tan S, Wu X (2021), “Trash classification based on GoogleNet, MobileNetV2, and ResNet-50”, Journal of Physics: Conference Series, 1827(1), 012165.  
[7]	Islam N, Noor H, Ahmed MR (2024), “Enhancing Garbage Classification with Swin Transformer and Attention-Based Autoencoder: An Efficient Approach for Waste Management”, ResearchGate, 1-12.

---

## 👩‍💻 Tác giả

**Nguyễn Thị Hồng Ngân**

- 🎓 Ngành Kỹ thuật Phần mềm — Trường Đại học Nam Cần Thơ
- 💻 GitHub: [HnganNguyen](https://github.com/HnganNguyen)

---

<p align="center">
  © 2026 GarbageDetection • Phân Loại Rác Thải Thông Minh
</p>
